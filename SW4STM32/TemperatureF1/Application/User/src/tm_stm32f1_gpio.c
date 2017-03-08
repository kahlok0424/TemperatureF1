/**
 * |----------------------------------------------------------------------
 * | Copyright (C) Tilen Majerle, 2015
 * | Copyright (C) Poh Tze Ven, 2017
 * |
 * | Version: 0.1
 * |
 * | This program is free software: you can redistribute it and/or modify
 * | it under the terms of the GNU General Public License as published by
 * | the Free Software Foundation, either version 3 of the License, or
 * | any later version.
 * |
 * | This program is distributed in the hope that it will be useful,
 * | but WITHOUT ANY WARRANTY; without even the implied warranty of
 * | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * | GNU General Public License for more details.
 * |
 * | You should have received a copy of the GNU General Public License
 * | along with this program.  If not, see <http://www.gnu.org/licenses/>.
 * |----------------------------------------------------------------------
 */
#include <stdint.h>
#include "tm_stm32f1_gpio.h"

/* Private function */
static uint16_t GPIO_UsedPins[11] = {0,0,0,0,0,0,0,0,0,0,0};
static PinState pinStates[TOTAL_PORTS][8];

/* Private functions */
void TM_GPIO_INT_EnableClock(GPIO_TypeDef* GPIOx);
void TM_GPIO_INT_DisableClock(GPIO_TypeDef* GPIOx);
void TM_GPIO_INT_Init(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, TM_GPIO_Mode_t GPIO_Mode, TM_GPIO_OType_t GPIO_OType, TM_GPIO_PuPd_t GPIO_PuPd, TM_GPIO_Speed_t GPIO_Speed);

/**
 * Convert from speed in TM_GPIO_Speed_t format to hardware speed format
 */
int convertToPinSpeed(TM_GPIO_Speed_t speed) {
  switch(speed) {
    case TM_GPIO_Speed_Low:
      return 2;           // Set to output @ 2MHz
    case TM_GPIO_Speed_Medium:
      return 1;           // Set to output @ 10MHz
    case TM_GPIO_Speed_Fast:
    case TM_GPIO_Speed_High:
      return 3;           // Set to output @ 50MHz
    default:
      return 3;
  }  
}

void gpioSetPin(GPIO_TypeDef* GPIOx, PinState pinState, int GPIO_Pin) {
  __IO uint32_t *controlReg = getGpioControlReg(GPIOx, GPIO_Pin);
  int bitPos = GPIO_Pin << 2;
  
  *controlReg &= ~(0xf << bitPos);    // Clear CNF[1:0] and Mode[1:0] fields
  switch(pinState.mode) {
    case TM_GPIO_Mode_IN:      
      if(pinState.pullType != TM_GPIO_PuPd_NOPULL) {
        *controlReg |= 8 << bitPos;     // Set to input & pull-up/down
        if(pinState.pullType ==TM_GPIO_PuPd_UP)
          GPIOx->BSRR |= 1 << GPIO_Pin;
        else
          GPIOx->BSRR |= 1 << (GPIO_Pin + 16);
      } else {
        *controlReg |= 4 << bitPos;     // Set to input & floating
      }
      break;
      
    case TM_GPIO_Mode_OUT:
      *controlReg |= convertToPinSpeed(pinState.speed) << bitPos;
      if(pinState.outputType == TM_GPIO_OType_OD)
        *controlReg |= 1 << bitPos;           // Set to I/O open-drain
      // else do nothing since already an I/O push-pull   
      break;
      
    case TM_GPIO_Mode_AF:
      *controlReg |= convertToPinSpeed(pinState.speed) << bitPos;
      if(pinState.outputType == TM_GPIO_OType_PP)
        *controlReg |= 8 << bitPos;           // Set to I/O push-pull
      else
        *controlReg |= 0xc << bitPos;         // Set to AF open-drain
      break;
      
    case TM_GPIO_Mode_AN:
      // Set to analog
      *controlReg &= ~(0xf << bitPos);
      break;
      
    default:
      break;
  }
}

void TARUC_GPIO_SetMode(GPIO_TypeDef* GPIOx,                       \
                       TM_GPIO_Mode_t GPIO_Mode,                  \
                       int GPIO_Pin) {
  PinState *pinState = &pinStates[getGpioIndex(GPIOx)][GPIO_Pin];
  
  pinState->mode = GPIO_Mode;  
  gpioSetPin(GPIOx, *pinState, GPIO_Pin);
}

/**
 * Configure pin to no pull, pull up, or pull down only if it was
 * configured as input mode
 */
void TARUC_GPIO_SetPullType(GPIO_TypeDef* GPIOx,                             \
                           TM_GPIO_PuPd_t GPIO_PuPd,                        \
                           int GPIO_Pin) {
  PinState *pinState = &pinStates[getGpioIndex(GPIOx)][GPIO_Pin];
  
  pinState->pullType = GPIO_PuPd;
  gpioSetPin(GPIOx, *pinState, GPIO_Pin);
}

/**
 * Configure pin to push-pull or open-drain only if it was configured as
 * output mode
 */
void TARUC_GPIO_SetOutputType(GPIO_TypeDef* GPIOx,                           \
                             TM_GPIO_OType_t GPIO_OType,                    \
                             int GPIO_Pin) {
  PinState *pinState = &pinStates[getGpioIndex(GPIOx)][GPIO_Pin];
  
  pinState->outputType = GPIO_OType;
  gpioSetPin(GPIOx, *pinState, GPIO_Pin);
}

/**
 * Configure pin to 2MHz, 10MHz, or 50MHz only if it was configured as
 * output mode
 */
void TARUC_GPIO_SetSpeed(GPIO_TypeDef* GPIOx,                          \
                           TM_GPIO_Speed_t GPIO_Speed,                \
                           int GPIO_Pin) {
  PinState *pinState = &pinStates[getGpioIndex(GPIOx)][GPIO_Pin];
  
  pinState->speed = GPIO_Speed;
  gpioSetPin(GPIOx, *pinState, GPIO_Pin);
}

// ***** USED *****
void TM_GPIO_Init(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, TM_GPIO_Mode_t GPIO_Mode, TM_GPIO_OType_t GPIO_OType, TM_GPIO_PuPd_t GPIO_PuPd, TM_GPIO_Speed_t GPIO_Speed) {
	/* Check input */
	if (GPIO_Pin == 0x00) {
		return;
	}

	/* Enable clock for GPIO */
	TM_GPIO_INT_EnableClock(GPIOx);
  gpioUnreset(GPIOx);

	/* Do initialization */
	TM_GPIO_INT_Init(GPIOx, GPIO_Pin, GPIO_Mode, GPIO_OType, GPIO_PuPd, GPIO_Speed);
}

void TM_GPIO_InitAlternate(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, TM_GPIO_OType_t GPIO_OType, TM_GPIO_PuPd_t GPIO_PuPd, TM_GPIO_Speed_t GPIO_Speed, uint8_t Alternate) {
	// WARNING: Do nothing
}

void TM_GPIO_DeInit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin) {
	uint8_t i;
	uint8_t ptr = TM_GPIO_GetPortSource(GPIOx);

	/* Go through all pins */
	for (i = 0x00; i < 0x10; i++) {
		/* Pin is set */
		if (GPIO_Pin & (1 << i)) {
			/* Set to analog mode */
			TARUC_GPIO_SetMode(GPIOx, TM_GPIO_Mode_AN, i);

			/* Pin is not used */
			GPIO_UsedPins[ptr] &= ~(1 << i);
		}
	}
}

// ***** USED *****
void TM_GPIO_SetPinAsInput(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin) {
	uint8_t i;
	/* Go through all pins */
	for (i = 0x00; i < 0x10; i++) {
		/* Pin is set */
		if (GPIO_Pin & (1 << i)) {
			/* Set to input */
      TARUC_GPIO_SetMode(GPIOx, TM_GPIO_Mode_IN, i);
		}
	}
}

// ***** USED *****
void TM_GPIO_SetPinAsOutput(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin) {
	uint8_t i;
	/* Go through all pins */
	for (i = 0x00; i < 0x10; i++) {
		/* Pin is set */
		if (GPIO_Pin & (1 << i)) {
			/* Set to output */
			TARUC_GPIO_SetMode(GPIOx, TM_GPIO_Mode_OUT, i);
		}
	}
}

void TM_GPIO_SetPinAsAnalog(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin) {
	uint8_t i;
	/* Go through all pins */
	for (i = 0x00; i < 0x10; i++) {
		/* Pin is set */
		if (GPIO_Pin & (1 << i)) {
			/* Set to analog mode */
			TARUC_GPIO_SetMode(GPIOx, TM_GPIO_Mode_AN, i);
		}
	}
}

void TM_GPIO_SetPinAsAlternate(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin) {
	uint8_t i;

	/* Set alternate functions for all pins */
	for (i = 0; i < 0x10; i++) {
		/* Check pin */
		if ((GPIO_Pin & (1 << i)) == 0) {
			continue;
		}

		/* Set alternate mode */
    TARUC_GPIO_SetMode(GPIOx, TM_GPIO_Mode_AF, i);
	}
}

void TM_GPIO_SetPullResistor(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, TM_GPIO_PuPd_t GPIO_PuPd) {
	uint8_t pinpos;

	/* Go through all pins */
	for (pinpos = 0; pinpos < 0x10; pinpos++) {
		/* Check if pin available */
		if ((GPIO_Pin & (1 << pinpos)) == 0) {
			continue;
		}

		/* Set GPIO PUPD register */
    TARUC_GPIO_SetPullType(GPIOx, GPIO_PuPd, GPIO_Pin);
	}
}

void TM_GPIO_Lock(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin) {
	uint32_t d;

	/* Set GPIO pin with 16th bit set to 1 */
	d = 0x00010000 | GPIO_Pin;

	/* Write to LCKR register */
	GPIOx->LCKR = d;
	GPIOx->LCKR = GPIO_Pin;
	GPIOx->LCKR = d;

	/* Read twice */
	(void)GPIOx->LCKR;
	(void)GPIOx->LCKR;
}

uint16_t TM_GPIO_GetPinSource(uint16_t GPIO_Pin) {
	uint16_t pinsource = 0;

	/* Get pinsource */
	while (GPIO_Pin > 1) {
		/* Increase pinsource */
		pinsource++;
		/* Shift right */
		GPIO_Pin >>= 1;
	}

	/* Return source */
	return pinsource;
}

// ***** USED *****
uint16_t TM_GPIO_GetPortSource(GPIO_TypeDef* GPIOx) {
	return getGpioIndex(GPIOx);
}

/* Private functions */
// ***** USED *****
void TM_GPIO_INT_EnableClock(GPIO_TypeDef* GPIOx) {
	/* Set bit according to the 1 << portsourcenumber */
	RCC->APB2ENR |= (1 << (TM_GPIO_GetPortSource(GPIOx) + 2));
}

void TM_GPIO_INT_DisableClock(GPIO_TypeDef* GPIOx) {
	/* Clear bit according to the 1 << portsourcenumber */
	RCC->APB2ENR &= ~(1 << (TM_GPIO_GetPortSource(GPIOx) + 2));
}

void gpioUnreset(GPIO_TypeDef* GPIOx) {
  RCC->APB2RSTR &= ~(1 << (TM_GPIO_GetPortSource(GPIOx) + 2));
}

void gpioReset(GPIO_TypeDef* GPIOx) {
  RCC->APB2RSTR |= 1 << (TM_GPIO_GetPortSource(GPIOx) + 2);
}

// ***** USED *****
void TM_GPIO_INT_Init(GPIO_TypeDef* GPIOx,                                  \
                      uint16_t GPIO_Pin,                                    \
                      TM_GPIO_Mode_t GPIO_Mode,                             \
                      TM_GPIO_OType_t GPIO_OType,                           \
                      TM_GPIO_PuPd_t GPIO_PuPd,                             \
                      TM_GPIO_Speed_t GPIO_Speed) {
	uint8_t pinpos;
	uint8_t ptr = TM_GPIO_GetPortSource(GPIOx);

	/* Go through all pins */
	for (pinpos = 0; pinpos < 0x10; pinpos++) {
		/* Check if pin available */
		if ((GPIO_Pin & (1 << pinpos)) == 0) {
			continue;
		}

		/* Pin is used */
		GPIO_UsedPins[ptr] |= 1 << pinpos;

		/* Set GPIO PUPD register */
    TARUC_GPIO_SetPullType(GPIOx, GPIO_PuPd, GPIO_Pin);

		/* Set GPIO MODE register */
		TARUC_GPIO_SetMode(GPIOx, GPIO_Mode, GPIO_Pin);

		/* Set only if output or alternate functions */
		if (GPIO_Mode == TM_GPIO_Mode_OUT || GPIO_Mode == TM_GPIO_Mode_AF) {
			/* Set GPIO OTYPE register */
			TARUC_GPIO_SetOutputType(GPIOx, GPIO_OType, GPIO_Pin);

			/* Set GPIO OSPEED register */
			TARUC_GPIO_SetSpeed(GPIOx, GPIO_Speed, GPIO_Pin);
		}
	}
}

uint16_t TM_GPIO_GetUsedPins(GPIO_TypeDef* GPIOx) {
	/* Return used */
	return GPIO_UsedPins[TM_GPIO_GetPortSource(GPIOx)];
}

uint16_t TM_GPIO_GetFreePins(GPIO_TypeDef* GPIOx) {
	/* Return free pins */
	return ~GPIO_UsedPins[TM_GPIO_GetPortSource(GPIOx)];
}
