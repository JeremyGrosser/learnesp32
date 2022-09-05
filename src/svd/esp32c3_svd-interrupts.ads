pragma Style_Checks (Off);

--  Copyright 2022 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c3.svd

--  Definition of the device's interrupts
package ESP32C3_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   UHCI0_Interrupt             : constant := 15;
   GPIO_Interrupt              : constant := 16;
   GPIO_NMI_Interrupt          : constant := 17;
   SPI2_Interrupt              : constant := 19;
   I2S_Interrupt               : constant := 20;
   UART0_Interrupt             : constant := 21;
   UART1_Interrupt             : constant := 22;
   LEDC_Interrupt              : constant := 23;
   EFUSE_Interrupt             : constant := 24;
   TWAI_Interrupt              : constant := 25;
   USB_SERIAL_JTAG_Interrupt   : constant := 26;
   RTC_CORE_Interrupt          : constant := 27;
   RMT_Interrupt               : constant := 28;
   I2C_EXT0_Interrupt          : constant := 29;
   TG0_T0_LEVEL_Interrupt      : constant := 32;
   TG0_WDT_LEVEL_Interrupt     : constant := 33;
   TG1_T0_LEVEL_Interrupt      : constant := 34;
   TG1_WDT_LEVEL_Interrupt     : constant := 35;
   SYSTIMER_TARGET0_Interrupt  : constant := 37;
   SYSTIMER_TARGET1_Interrupt  : constant := 38;
   SYSTIMER_TARGET2_Interrupt  : constant := 39;
   APB_ADC_Interrupt           : constant := 43;
   DMA_CH0_Interrupt           : constant := 44;
   DMA_CH1_Interrupt           : constant := 45;
   DMA_CH2_Interrupt           : constant := 46;
   RSA_Interrupt               : constant := 47;
   AES_Interrupt               : constant := 48;
   SHA_Interrupt               : constant := 49;
   ASSIST_DEBUG_Interrupt      : constant := 54;

end ESP32C3_SVD.Interrupts;
