/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc;

I2C_HandleTypeDef hi2c1;

/* USER CODE BEGIN PV */

uint8_t temp=0;
int32_t adcValue;

LPS25HB_InterruptTypeDef_st Config;
LPS25HB_MeasureTypeDef_st mesure;
LPS25HB_InterruptDiffStatus_st source_int_reg;
int32_t refrence_pres;
HAL_StatusTypeDef temp1;



uint16_t humidity;
int16_t temperature;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_ADC_Init(void);
static void MX_I2C1_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */
  

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_ADC_Init();
  MX_I2C1_Init();
  /* USER CODE BEGIN 2 */

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /** Configure the main internal regulator output voltage 
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = 0;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_5;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler(__func__);
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_MSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler(__func__);
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_I2C1;
  PeriphClkInit.I2c1ClockSelection = RCC_I2C1CLKSOURCE_PCLK1;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler(__func__);
  }
}

/**
  * @brief ADC Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC_Init(void)
{

  /* USER CODE BEGIN ADC_Init 0 */

  /* USER CODE END ADC_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC_Init 1 */

  /* USER CODE END ADC_Init 1 */
  /** Configure the global features of the ADC (Clock, Resolution, Data Alignment and number of conversion) 
  */
  hadc.Instance = ADC1;
  hadc.Init.OversamplingMode = DISABLE;
  hadc.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV1;
  hadc.Init.Resolution = ADC_RESOLUTION_12B;
  hadc.Init.SamplingTime = ADC_SAMPLETIME_1CYCLE_5;
  hadc.Init.ScanConvMode = ADC_SCAN_DIRECTION_FORWARD;
  hadc.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc.Init.ContinuousConvMode = DISABLE;
  hadc.Init.DiscontinuousConvMode = DISABLE;
  hadc.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc.Init.DMAContinuousRequests = DISABLE;
  hadc.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  hadc.Init.Overrun = ADC_OVR_DATA_PRESERVED;
  hadc.Init.LowPowerAutoWait = DISABLE;
  hadc.Init.LowPowerFrequencyMode = DISABLE;
  hadc.Init.LowPowerAutoPowerOff = DISABLE;
  if (HAL_ADC_Init(&hadc) != HAL_OK)
  {
    Error_Handler(__func__);
  }
  /** Configure for the selected ADC regular channel to be converted. 
  */
  sConfig.Channel = ADC_CHANNEL_2;
  sConfig.Rank = ADC_RANK_CHANNEL_NUMBER;
  if (HAL_ADC_ConfigChannel(&hadc, &sConfig) != HAL_OK)
  {
    Error_Handler(__func__);
  }
  /* USER CODE BEGIN ADC_Init 2 */

  /* USER CODE END ADC_Init 2 */

}

/**
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C1_Init(void)
{

  /* USER CODE BEGIN I2C1_Init 0 */

  /* USER CODE END I2C1_Init 0 */

  /* USER CODE BEGIN I2C1_Init 1 */

  /* USER CODE END I2C1_Init 1 */
  hi2c1.Instance = I2C1;
  hi2c1.Init.Timing = 0x00000708;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.OwnAddress2Masks = I2C_OA2_NOMASK;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler(__func__);
  }
  /** Configure Analogue filter 
  */
  if (HAL_I2CEx_ConfigAnalogFilter(&hi2c1, I2C_ANALOGFILTER_ENABLE) != HAL_OK)
  {
    Error_Handler(__func__);
  }
  /** Configure Digital filter 
  */
  if (HAL_I2CEx_ConfigDigitalFilter(&hi2c1, 0) != HAL_OK)
  {
    Error_Handler(__func__);
  }
  /* USER CODE BEGIN I2C1_Init 2 */

  /* USER CODE END I2C1_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void){
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOA_CLK_ENABLE();

  /*Configure GPIO pin : PA5 */
  GPIO_InitStruct.Pin = GPIO_PIN_5;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI4_15_IRQn, 1, 0);
  HAL_NVIC_EnableIRQ(EXTI4_15_IRQn);

}

/* USER CODE BEGIN 4 */

uint8_t Sensor_IO_Write( void *handle,uint8_t SensorAddr, uint8_t WriteAddr, uint8_t *pBuffer, uint16_t nBytesToWrite ){
    if ( nBytesToWrite > 1 ) WriteAddr |= 0x80;  /* Enable I2C multi-bytes Write */
	temp1=HAL_I2C_Mem_Write_IT(handle,SensorAddr,WriteAddr,1,pBuffer,nBytesToWrite);

	HAL_Delay(2);
	if(temp1!=HAL_OK){
		  return 1;
	  }
	  return 0;
}
uint8_t Sensor_IO_Read( void *handle,uint8_t SensorAddr, uint8_t ReadAddr, uint8_t *pBuffer, uint16_t nBytesToRead ){
	if ( nBytesToRead > 1 ) ReadAddr |= 0x80; /* Enable I2C multi-bytes Read */
	temp1 = HAL_I2C_Mem_Read_IT(handle,SensorAddr,ReadAddr,1,pBuffer,nBytesToRead);

	HAL_Delay(2);
	if(temp1!=HAL_OK){
		  return 1;
	  }
	  return 0;}




void Cycle_Read_Measuments(){

	// Read ADC
	HAL_ADC_Init(&hadc);
	HAL_ADC_Start_IT(&hadc);
	adcValue=HAL_ADC_GetValue(&hadc);
	HAL_ADC_Stop_IT(&hadc);
	HAL_ADC_DeInit(&hadc);

	// Read I2C
	// read pressure and temperature
	HAL_ResumeTick();

	LPS25HB_Get_Measurement(&hi2c1, &mesure);

	LPS25HB_ResetAZ(&hi2c1);
	//read humidity
	HTS221_Get_Measurement(&hi2c1, &humidity, &temperature);

	HAL_SuspendTick();
}


void Sensors_Init(){

	LPS25HB_InterruptTypeDef_st interrupt;

	  interrupt.INT_H_L = (LPS25HB_State_et)LPS25HB_ENABLE;
	  interrupt.LatchIRQ = (LPS25HB_State_et)LPS25HB_ENABLE;
	  interrupt.OutputSignal_INT1 =(LPS25HB_OutputSignalConfig_et)LPS25HB_P_LOW_HIGH;
	  interrupt.PP_OD = (LPS25HB_OutputType_et)LPS25HB_PushPull;
	  interrupt.PressureInterrupt =(LPS25HB_InterruptDiffConfig_et)LPS25HB_PLE_PHE;
	  interrupt.fP_threshold = 0x08;
	  interrupt.DataInterrupt_INT1 = (LPS25HB_DataSignalType_et)LPS25HB_DISABLE_DATA_INT;


	LPS25HB_ConfigTypeDef_st GenericConfig;

	  GenericConfig.AutoZero=LPS25HB_ENABLE;
	  GenericConfig.BDU=LPS25HB_BDU_NO_UPDATE;
	  GenericConfig.OutputDataRate=LPS25HB_ODR_12_5HZ;
	  GenericConfig.PressResolution=LPS25HB_AVGP_32;
	  GenericConfig.Reset_AZ=LPS25HB_ENABLE;


	HTS221_Init_st pxInit;
	  pxInit.avg_h= HTS221_AVGH_16;
	  pxInit.avg_t= HTS221_AVGT_8;
	  pxInit.bdu_status= HTS221_DISABLE;
	  pxInit.odr= HTS221_ODR_12_5HZ ;


	  HAL_ResumeTick();

	  HTS221_Set_InitConfig(&hi2c1, &pxInit);



	  if(LPS25HB_Set_GenericConfig(&hi2c1, &GenericConfig)){
		  Error_Handler(__func__);
	  }

	  if(LPS25HB_Set_InterruptConfig(&hi2c1,&interrupt)!=LPS25HB_OK)
	    {
	  	  Error_Handler(__func__);
	    }

	  if(    LPS25HB_Set_PowerDownMode(&hi2c1, LPS25HB_SET)!=LPS25HB_OK)
	    {
	  	  Error_Handler(__func__);
	    }

	  HAL_SuspendTick();

}










void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc)
{
	adcValue=HAL_ADC_GetValue(hadc);
}


void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{

}




/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(char const * caller_name)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
	caller_name;
	while(1){

	}
  /* USER CODE END Error_Handler_Debug */
}
#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
