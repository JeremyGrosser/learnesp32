pragma Style_Checks (Off);

--  Copyright 2022 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c3.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  32-bit RISC-V MCU & 2.4 GHz Wi-Fi & Bluetooth 5 (LE)
package ESP32C3 is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   AES_Base : constant System.Address := System'To_Address (16#6003A000#);
   APB_CTRL_Base : constant System.Address := System'To_Address (16#60026000#);
   APB_SARADC_Base : constant System.Address := System'To_Address (16#60040000#);
   ASSIST_DEBUG_Base : constant System.Address := System'To_Address (16#600CE000#);
   DMA_Base : constant System.Address := System'To_Address (16#6003F000#);
   DS_Base : constant System.Address := System'To_Address (16#6003D000#);
   EFUSE_Base : constant System.Address := System'To_Address (16#60008800#);
   EXTMEM_Base : constant System.Address := System'To_Address (16#600C4000#);
   GPIO_Base : constant System.Address := System'To_Address (16#60004000#);
   GPIOSD_Base : constant System.Address := System'To_Address (16#60004F00#);
   HMAC_Base : constant System.Address := System'To_Address (16#6003E000#);
   I2C0_Base : constant System.Address := System'To_Address (16#60013000#);
   I2S_Base : constant System.Address := System'To_Address (16#6002D000#);
   INTERRUPT_CORE0_Base : constant System.Address := System'To_Address (16#600C2000#);
   IO_MUX_Base : constant System.Address := System'To_Address (16#60009000#);
   LEDC_Base : constant System.Address := System'To_Address (16#60019000#);
   RMT_Base : constant System.Address := System'To_Address (16#60016000#);
   RNG_Base : constant System.Address := System'To_Address (16#60026000#);
   RSA_Base : constant System.Address := System'To_Address (16#6003C000#);
   RTC_CNTL_Base : constant System.Address := System'To_Address (16#60008000#);
   SENSITIVE_Base : constant System.Address := System'To_Address (16#600C1000#);
   SHA_Base : constant System.Address := System'To_Address (16#6003B000#);
   SPI0_Base : constant System.Address := System'To_Address (16#60003000#);
   SPI1_Base : constant System.Address := System'To_Address (16#60002000#);
   SPI2_Base : constant System.Address := System'To_Address (16#60024000#);
   SYSTEM_Base : constant System.Address := System'To_Address (16#600C0000#);
   SYSTIMER_Base : constant System.Address := System'To_Address (16#60023000#);
   TIMG0_Base : constant System.Address := System'To_Address (16#6001F000#);
   TIMG1_Base : constant System.Address := System'To_Address (16#60020000#);
   TWAI_Base : constant System.Address := System'To_Address (16#6002B000#);
   UART0_Base : constant System.Address := System'To_Address (16#60000000#);
   UART1_Base : constant System.Address := System'To_Address (16#60010000#);
   UHCI0_Base : constant System.Address := System'To_Address (16#60014000#);
   UHCI1_Base : constant System.Address := System'To_Address (16#6000C000#);
   USB_DEVICE_Base : constant System.Address := System'To_Address (16#60043000#);
   XTS_AES_Base : constant System.Address := System'To_Address (16#600CC000#);

end ESP32C3;
