pragma Style_Checks (Off);

--  Copyright 2022 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c3.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32C3.RTC_CNTL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype OPTIONS0_SW_STALL_APPCPU_C0_Field is HAL.UInt2;
   subtype OPTIONS0_SW_STALL_PROCPU_C0_Field is HAL.UInt2;
   subtype OPTIONS0_XTL_EN_WAIT_Field is HAL.UInt4;
   subtype OPTIONS0_XTL_EXT_CTR_SEL_Field is HAL.UInt3;

   --  rtc configure register
   type OPTIONS0_Register is record
      --  {reg_sw_stall_appcpu_c1[5:0], reg_sw_stall_appcpu_c0[1:0]} == 0x86
      --  will stall APP CPU
      SW_STALL_APPCPU_C0  : OPTIONS0_SW_STALL_APPCPU_C0_Field := 16#0#;
      --  {reg_sw_stall_procpu_c1[5:0], reg_sw_stall_procpu_c0[1:0]} == 0x86
      --  will stall PRO CPU
      SW_STALL_PROCPU_C0  : OPTIONS0_SW_STALL_PROCPU_C0_Field := 16#0#;
      --  Write-only. APP CPU SW reset
      SW_APPCPU_RST       : Boolean := False;
      --  Write-only. PRO CPU SW reset
      SW_PROCPU_RST       : Boolean := False;
      --  BB_I2C force power down
      BB_I2C_FORCE_PD     : Boolean := False;
      --  BB_I2C force power up
      BB_I2C_FORCE_PU     : Boolean := False;
      --  BB_PLL _I2C force power down
      BBPLL_I2C_FORCE_PD  : Boolean := False;
      --  BB_PLL_I2C force power up
      BBPLL_I2C_FORCE_PU  : Boolean := False;
      --  BB_PLL force power down
      BBPLL_FORCE_PD      : Boolean := False;
      --  BB_PLL force power up
      BBPLL_FORCE_PU      : Boolean := False;
      --  crystall force power down
      XTL_FORCE_PD        : Boolean := False;
      --  crystall force power up
      XTL_FORCE_PU        : Boolean := True;
      --  wait bias_sleep and current source wakeup
      XTL_EN_WAIT         : OPTIONS0_XTL_EN_WAIT_Field := 16#2#;
      --  unspecified
      Reserved_18_19      : HAL.UInt2 := 16#0#;
      --  analog configure
      XTL_EXT_CTR_SEL     : OPTIONS0_XTL_EXT_CTR_SEL_Field := 16#0#;
      --  analog configure
      XTL_FORCE_ISO       : Boolean := False;
      --  analog configure
      PLL_FORCE_ISO       : Boolean := False;
      --  analog configure
      ANALOG_FORCE_ISO    : Boolean := False;
      --  analog configure
      XTL_FORCE_NOISO     : Boolean := True;
      --  analog configure
      PLL_FORCE_NOISO     : Boolean := True;
      --  analog configure
      ANALOG_FORCE_NOISO  : Boolean := True;
      --  digital wrap force reset in deep sleep
      DG_WRAP_FORCE_RST   : Boolean := False;
      --  digital core force no reset in deep sleep
      DG_WRAP_FORCE_NORST : Boolean := False;
      --  Write-only. SW system reset
      SW_SYS_RST          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPTIONS0_Register use record
      SW_STALL_APPCPU_C0  at 0 range 0 .. 1;
      SW_STALL_PROCPU_C0  at 0 range 2 .. 3;
      SW_APPCPU_RST       at 0 range 4 .. 4;
      SW_PROCPU_RST       at 0 range 5 .. 5;
      BB_I2C_FORCE_PD     at 0 range 6 .. 6;
      BB_I2C_FORCE_PU     at 0 range 7 .. 7;
      BBPLL_I2C_FORCE_PD  at 0 range 8 .. 8;
      BBPLL_I2C_FORCE_PU  at 0 range 9 .. 9;
      BBPLL_FORCE_PD      at 0 range 10 .. 10;
      BBPLL_FORCE_PU      at 0 range 11 .. 11;
      XTL_FORCE_PD        at 0 range 12 .. 12;
      XTL_FORCE_PU        at 0 range 13 .. 13;
      XTL_EN_WAIT         at 0 range 14 .. 17;
      Reserved_18_19      at 0 range 18 .. 19;
      XTL_EXT_CTR_SEL     at 0 range 20 .. 22;
      XTL_FORCE_ISO       at 0 range 23 .. 23;
      PLL_FORCE_ISO       at 0 range 24 .. 24;
      ANALOG_FORCE_ISO    at 0 range 25 .. 25;
      XTL_FORCE_NOISO     at 0 range 26 .. 26;
      PLL_FORCE_NOISO     at 0 range 27 .. 27;
      ANALOG_FORCE_NOISO  at 0 range 28 .. 28;
      DG_WRAP_FORCE_RST   at 0 range 29 .. 29;
      DG_WRAP_FORCE_NORST at 0 range 30 .. 30;
      SW_SYS_RST          at 0 range 31 .. 31;
   end record;

   subtype SLP_TIMER1_SLP_VAL_HI_Field is HAL.UInt16;

   --  rtc configure register
   type SLP_TIMER1_Register is record
      --  RTC sleep timer high 16 bits
      SLP_VAL_HI              : SLP_TIMER1_SLP_VAL_HI_Field := 16#0#;
      --  Write-only. timer alarm enable bit
      RTC_MAIN_TIMER_ALARM_EN : Boolean := False;
      --  unspecified
      Reserved_17_31          : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLP_TIMER1_Register use record
      SLP_VAL_HI              at 0 range 0 .. 15;
      RTC_MAIN_TIMER_ALARM_EN at 0 range 16 .. 16;
      Reserved_17_31          at 0 range 17 .. 31;
   end record;

   --  rtc configure register
   type TIME_UPDATE_Register is record
      --  unspecified
      Reserved_0_26   : HAL.UInt27 := 16#0#;
      --  Enable to record system stall time
      TIMER_SYS_STALL : Boolean := False;
      --  Enable to record 40M XTAL OFF time
      TIMER_XTL_OFF   : Boolean := False;
      --  enable to record system reset time
      TIMER_SYS_RST   : Boolean := False;
      --  unspecified
      Reserved_30_30  : HAL.Bit := 16#0#;
      --  Write-only. Set 1: to update register with RTC timer
      RTC_TIME_UPDATE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIME_UPDATE_Register use record
      Reserved_0_26   at 0 range 0 .. 26;
      TIMER_SYS_STALL at 0 range 27 .. 27;
      TIMER_XTL_OFF   at 0 range 28 .. 28;
      TIMER_SYS_RST   at 0 range 29 .. 29;
      Reserved_30_30  at 0 range 30 .. 30;
      RTC_TIME_UPDATE at 0 range 31 .. 31;
   end record;

   subtype TIME_HIGH0_RTC_TIMER_VALUE0_HIGH_Field is HAL.UInt16;

   --  rtc configure register
   type TIME_HIGH0_Register is record
      --  Read-only. RTC timer high 16 bits
      RTC_TIMER_VALUE0_HIGH : TIME_HIGH0_RTC_TIMER_VALUE0_HIGH_Field;
      --  unspecified
      Reserved_16_31        : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIME_HIGH0_Register use record
      RTC_TIMER_VALUE0_HIGH at 0 range 0 .. 15;
      Reserved_16_31        at 0 range 16 .. 31;
   end record;

   --  rtc configure register
   type STATE0_Register is record
      --  Write-only. rtc software interrupt to main cpu
      RTC_SW_CPU_INT           : Boolean := False;
      --  Write-only. clear rtc sleep reject cause
      RTC_SLP_REJECT_CAUSE_CLR : Boolean := False;
      --  unspecified
      Reserved_2_21            : HAL.UInt20 := 16#0#;
      --  1: APB to RTC using bridge
      APB2RTC_BRIDGE_SEL       : Boolean := False;
      --  unspecified
      Reserved_23_27           : HAL.UInt5 := 16#0#;
      --  Read-only. SDIO active indication
      SDIO_ACTIVE_IND          : Boolean := False;
      --  leep wakeup bit
      SLP_WAKEUP               : Boolean := False;
      --  leep reject bit
      SLP_REJECT               : Boolean := False;
      --  sleep enable bit
      SLEEP_EN                 : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATE0_Register use record
      RTC_SW_CPU_INT           at 0 range 0 .. 0;
      RTC_SLP_REJECT_CAUSE_CLR at 0 range 1 .. 1;
      Reserved_2_21            at 0 range 2 .. 21;
      APB2RTC_BRIDGE_SEL       at 0 range 22 .. 22;
      Reserved_23_27           at 0 range 23 .. 27;
      SDIO_ACTIVE_IND          at 0 range 28 .. 28;
      SLP_WAKEUP               at 0 range 29 .. 29;
      SLP_REJECT               at 0 range 30 .. 30;
      SLEEP_EN                 at 0 range 31 .. 31;
   end record;

   subtype TIMER1_CPU_STALL_WAIT_Field is HAL.UInt5;
   subtype TIMER1_CK8M_WAIT_Field is HAL.Byte;
   subtype TIMER1_XTL_BUF_WAIT_Field is HAL.UInt10;
   subtype TIMER1_PLL_BUF_WAIT_Field is HAL.Byte;

   --  rtc configure register
   type TIMER1_Register is record
      --  CPU stall enable bit
      CPU_STALL_EN   : Boolean := True;
      --  CPU stall wait cycles in fast_clk_rtc
      CPU_STALL_WAIT : TIMER1_CPU_STALL_WAIT_Field := 16#1#;
      --  CK8M wait cycles in slow_clk_rtc
      CK8M_WAIT      : TIMER1_CK8M_WAIT_Field := 16#10#;
      --  XTAL wait cycles in slow_clk_rtc
      XTL_BUF_WAIT   : TIMER1_XTL_BUF_WAIT_Field := 16#50#;
      --  PLL wait cycles in slow_clk_rtc
      PLL_BUF_WAIT   : TIMER1_PLL_BUF_WAIT_Field := 16#28#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER1_Register use record
      CPU_STALL_EN   at 0 range 0 .. 0;
      CPU_STALL_WAIT at 0 range 1 .. 5;
      CK8M_WAIT      at 0 range 6 .. 13;
      XTL_BUF_WAIT   at 0 range 14 .. 23;
      PLL_BUF_WAIT   at 0 range 24 .. 31;
   end record;

   subtype TIMER2_MIN_TIME_CK8M_OFF_Field is HAL.Byte;

   --  rtc configure register
   type TIMER2_Register is record
      --  unspecified
      Reserved_0_23     : HAL.UInt24 := 16#0#;
      --  minimal cycles in slow_clk_rtc for CK8M in power down state
      MIN_TIME_CK8M_OFF : TIMER2_MIN_TIME_CK8M_OFF_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER2_Register use record
      Reserved_0_23     at 0 range 0 .. 23;
      MIN_TIME_CK8M_OFF at 0 range 24 .. 31;
   end record;

   subtype TIMER3_WIFI_WAIT_TIMER_Field is HAL.UInt9;
   subtype TIMER3_WIFI_POWERUP_TIMER_Field is HAL.UInt7;
   subtype TIMER3_BT_WAIT_TIMER_Field is HAL.UInt9;
   subtype TIMER3_BT_POWERUP_TIMER_Field is HAL.UInt7;

   --  rtc configure register
   type TIMER3_Register is record
      --  wifi power domain wakeup time
      WIFI_WAIT_TIMER    : TIMER3_WIFI_WAIT_TIMER_Field := 16#8#;
      --  wifi power domain power on time
      WIFI_POWERUP_TIMER : TIMER3_WIFI_POWERUP_TIMER_Field := 16#5#;
      --  bt power domain wakeup time
      BT_WAIT_TIMER      : TIMER3_BT_WAIT_TIMER_Field := 16#8#;
      --  bt power domain power on time
      BT_POWERUP_TIMER   : TIMER3_BT_POWERUP_TIMER_Field := 16#5#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER3_Register use record
      WIFI_WAIT_TIMER    at 0 range 0 .. 8;
      WIFI_POWERUP_TIMER at 0 range 9 .. 15;
      BT_WAIT_TIMER      at 0 range 16 .. 24;
      BT_POWERUP_TIMER   at 0 range 25 .. 31;
   end record;

   subtype TIMER4_CPU_TOP_WAIT_TIMER_Field is HAL.UInt9;
   subtype TIMER4_CPU_TOP_POWERUP_TIMER_Field is HAL.UInt7;
   subtype TIMER4_DG_WRAP_WAIT_TIMER_Field is HAL.UInt9;
   subtype TIMER4_DG_WRAP_POWERUP_TIMER_Field is HAL.UInt7;

   --  rtc configure register
   type TIMER4_Register is record
      --  cpu top power domain wakeup time
      CPU_TOP_WAIT_TIMER    : TIMER4_CPU_TOP_WAIT_TIMER_Field := 16#8#;
      --  cpu top power domain power on time
      CPU_TOP_POWERUP_TIMER : TIMER4_CPU_TOP_POWERUP_TIMER_Field := 16#5#;
      --  digital wrap power domain wakeup time
      DG_WRAP_WAIT_TIMER    : TIMER4_DG_WRAP_WAIT_TIMER_Field := 16#20#;
      --  digital wrap power domain power on time
      DG_WRAP_POWERUP_TIMER : TIMER4_DG_WRAP_POWERUP_TIMER_Field := 16#8#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER4_Register use record
      CPU_TOP_WAIT_TIMER    at 0 range 0 .. 8;
      CPU_TOP_POWERUP_TIMER at 0 range 9 .. 15;
      DG_WRAP_WAIT_TIMER    at 0 range 16 .. 24;
      DG_WRAP_POWERUP_TIMER at 0 range 25 .. 31;
   end record;

   subtype TIMER5_MIN_SLP_VAL_Field is HAL.Byte;

   --  rtc configure register
   type TIMER5_Register is record
      --  unspecified
      Reserved_0_7   : HAL.Byte := 16#0#;
      --  minimal sleep cycles in slow_clk_rtc
      MIN_SLP_VAL    : TIMER5_MIN_SLP_VAL_Field := 16#80#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER5_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MIN_SLP_VAL    at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIMER6_DG_PERI_WAIT_TIMER_Field is HAL.UInt9;
   subtype TIMER6_DG_PERI_POWERUP_TIMER_Field is HAL.UInt7;

   --  rtc configure register
   type TIMER6_Register is record
      --  unspecified
      Reserved_0_15         : HAL.UInt16 := 16#0#;
      --  digital peri power domain wakeup time
      DG_PERI_WAIT_TIMER    : TIMER6_DG_PERI_WAIT_TIMER_Field := 16#8#;
      --  digital peri power domain power on time
      DG_PERI_POWERUP_TIMER : TIMER6_DG_PERI_POWERUP_TIMER_Field := 16#5#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER6_Register use record
      Reserved_0_15         at 0 range 0 .. 15;
      DG_PERI_WAIT_TIMER    at 0 range 16 .. 24;
      DG_PERI_POWERUP_TIMER at 0 range 25 .. 31;
   end record;

   --  rtc configure register
   type ANA_CONF_Register is record
      --  unspecified
      Reserved_0_17       : HAL.UInt18 := 16#0#;
      --  force no bypass i2c power on reset
      RESET_POR_FORCE_PD  : Boolean := True;
      --  force bypass i2c power on reset
      RESET_POR_FORCE_PU  : Boolean := False;
      --  enable glitch reset
      GLITCH_RST_EN       : Boolean := False;
      --  unspecified
      Reserved_21_21      : HAL.Bit := 16#0#;
      --  PLLA force power up
      SAR_I2C_PU          : Boolean := True;
      --  PLLA force power down
      PLLA_FORCE_PD       : Boolean := True;
      --  PLLA force power up
      PLLA_FORCE_PU       : Boolean := False;
      --  start BBPLL calibration during sleep
      BBPLL_CAL_SLP_START : Boolean := False;
      --  1: PVTMON power up
      PVTMON_PU           : Boolean := False;
      --  1: TXRF_I2C power up
      TXRF_I2C_PU         : Boolean := False;
      --  1: RFRX_PBUS power up
      RFRX_PBUS_PU        : Boolean := False;
      --  unspecified
      Reserved_29_29      : HAL.Bit := 16#0#;
      --  1: CKGEN_I2C power up
      CKGEN_I2C_PU        : Boolean := False;
      --  power up pll i2c
      PLL_I2C_PU          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ANA_CONF_Register use record
      Reserved_0_17       at 0 range 0 .. 17;
      RESET_POR_FORCE_PD  at 0 range 18 .. 18;
      RESET_POR_FORCE_PU  at 0 range 19 .. 19;
      GLITCH_RST_EN       at 0 range 20 .. 20;
      Reserved_21_21      at 0 range 21 .. 21;
      SAR_I2C_PU          at 0 range 22 .. 22;
      PLLA_FORCE_PD       at 0 range 23 .. 23;
      PLLA_FORCE_PU       at 0 range 24 .. 24;
      BBPLL_CAL_SLP_START at 0 range 25 .. 25;
      PVTMON_PU           at 0 range 26 .. 26;
      TXRF_I2C_PU         at 0 range 27 .. 27;
      RFRX_PBUS_PU        at 0 range 28 .. 28;
      Reserved_29_29      at 0 range 29 .. 29;
      CKGEN_I2C_PU        at 0 range 30 .. 30;
      PLL_I2C_PU          at 0 range 31 .. 31;
   end record;

   subtype RESET_STATE_RESET_CAUSE_PROCPU_Field is HAL.UInt6;
   subtype RESET_STATE_RESET_CAUSE_APPCPU_Field is HAL.UInt6;

   --  rtc configure register
   type RESET_STATE_Register is record
      --  Read-only. reset cause of PRO CPU
      RESET_CAUSE_PROCPU         : RESET_STATE_RESET_CAUSE_PROCPU_Field :=
                                    16#0#;
      --  Read-only. reset cause of APP CPU
      RESET_CAUSE_APPCPU         : RESET_STATE_RESET_CAUSE_APPCPU_Field :=
                                    16#0#;
      --  APP CPU state vector sel
      STAT_VECTOR_SEL_APPCPU     : Boolean := True;
      --  PRO CPU state vector sel
      STAT_VECTOR_SEL_PROCPU     : Boolean := True;
      --  Read-only. PRO CPU reset_flag
      ALL_RESET_FLAG_PROCPU      : Boolean := False;
      --  Read-only. APP CPU reset flag
      ALL_RESET_FLAG_APPCPU      : Boolean := False;
      --  Write-only. clear PRO CPU reset_flag
      ALL_RESET_FLAG_CLR_PROCPU  : Boolean := False;
      --  Write-only. clear APP CPU reset flag
      ALL_RESET_FLAG_CLR_APPCPU  : Boolean := False;
      --  APPCPU OcdHaltOnReset
      OCD_HALT_ON_RESET_APPCPU   : Boolean := False;
      --  PROCPU OcdHaltOnReset
      OCD_HALT_ON_RESET_PROCPU   : Boolean := False;
      --  Read-only. configure jtag reset configure
      JTAG_RESET_FLAG_PROCPU     : Boolean := False;
      --  Read-only. configure jtag reset configure
      JTAG_RESET_FLAG_APPCPU     : Boolean := False;
      --  Write-only. configure jtag reset configure
      JTAG_RESET_FLAG_CLR_PROCPU : Boolean := False;
      --  Write-only. configure jtag reset configure
      JTAG_RESET_FLAG_CLR_APPCPU : Boolean := False;
      --  configure dreset configure
      RTC_DRESET_MASK_APPCPU     : Boolean := False;
      --  configure dreset configure
      RTC_DRESET_MASK_PROCPU     : Boolean := False;
      --  unspecified
      Reserved_26_31             : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESET_STATE_Register use record
      RESET_CAUSE_PROCPU         at 0 range 0 .. 5;
      RESET_CAUSE_APPCPU         at 0 range 6 .. 11;
      STAT_VECTOR_SEL_APPCPU     at 0 range 12 .. 12;
      STAT_VECTOR_SEL_PROCPU     at 0 range 13 .. 13;
      ALL_RESET_FLAG_PROCPU      at 0 range 14 .. 14;
      ALL_RESET_FLAG_APPCPU      at 0 range 15 .. 15;
      ALL_RESET_FLAG_CLR_PROCPU  at 0 range 16 .. 16;
      ALL_RESET_FLAG_CLR_APPCPU  at 0 range 17 .. 17;
      OCD_HALT_ON_RESET_APPCPU   at 0 range 18 .. 18;
      OCD_HALT_ON_RESET_PROCPU   at 0 range 19 .. 19;
      JTAG_RESET_FLAG_PROCPU     at 0 range 20 .. 20;
      JTAG_RESET_FLAG_APPCPU     at 0 range 21 .. 21;
      JTAG_RESET_FLAG_CLR_PROCPU at 0 range 22 .. 22;
      JTAG_RESET_FLAG_CLR_APPCPU at 0 range 23 .. 23;
      RTC_DRESET_MASK_APPCPU     at 0 range 24 .. 24;
      RTC_DRESET_MASK_PROCPU     at 0 range 25 .. 25;
      Reserved_26_31             at 0 range 26 .. 31;
   end record;

   subtype WAKEUP_STATE_RTC_WAKEUP_ENA_Field is HAL.UInt17;

   --  rtc configure register
   type WAKEUP_STATE_Register is record
      --  unspecified
      Reserved_0_14  : HAL.UInt15 := 16#0#;
      --  wakeup enable bitmap
      RTC_WAKEUP_ENA : WAKEUP_STATE_RTC_WAKEUP_ENA_Field := 16#C#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WAKEUP_STATE_Register use record
      Reserved_0_14  at 0 range 0 .. 14;
      RTC_WAKEUP_ENA at 0 range 15 .. 31;
   end record;

   --  rtc configure register
   type INT_ENA_RTC_Register is record
      --  enable sleep wakeup interrupt
      SLP_WAKEUP_INT_ENA       : Boolean := False;
      --  enable sleep reject interrupt
      SLP_REJECT_INT_ENA       : Boolean := False;
      --  unspecified
      Reserved_2_2             : HAL.Bit := 16#0#;
      --  enable RTC WDT interrupt
      RTC_WDT_INT_ENA          : Boolean := False;
      --  unspecified
      Reserved_4_8             : HAL.UInt5 := 16#0#;
      --  enable brown out interrupt
      RTC_BROWN_OUT_INT_ENA    : Boolean := False;
      --  enable RTC main timer interrupt
      RTC_MAIN_TIMER_INT_ENA   : Boolean := False;
      --  unspecified
      Reserved_11_14           : HAL.UInt4 := 16#0#;
      --  enable super watch dog interrupt
      RTC_SWD_INT_ENA          : Boolean := False;
      --  enable xtal32k_dead interrupt
      RTC_XTAL32K_DEAD_INT_ENA : Boolean := False;
      --  unspecified
      Reserved_17_18           : HAL.UInt2 := 16#0#;
      --  enbale gitch det interrupt
      RTC_GLITCH_DET_INT_ENA   : Boolean := False;
      --  enbale bbpll cal end interrupt
      RTC_BBPLL_CAL_INT_ENA    : Boolean := False;
      --  unspecified
      Reserved_21_31           : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_RTC_Register use record
      SLP_WAKEUP_INT_ENA       at 0 range 0 .. 0;
      SLP_REJECT_INT_ENA       at 0 range 1 .. 1;
      Reserved_2_2             at 0 range 2 .. 2;
      RTC_WDT_INT_ENA          at 0 range 3 .. 3;
      Reserved_4_8             at 0 range 4 .. 8;
      RTC_BROWN_OUT_INT_ENA    at 0 range 9 .. 9;
      RTC_MAIN_TIMER_INT_ENA   at 0 range 10 .. 10;
      Reserved_11_14           at 0 range 11 .. 14;
      RTC_SWD_INT_ENA          at 0 range 15 .. 15;
      RTC_XTAL32K_DEAD_INT_ENA at 0 range 16 .. 16;
      Reserved_17_18           at 0 range 17 .. 18;
      RTC_GLITCH_DET_INT_ENA   at 0 range 19 .. 19;
      RTC_BBPLL_CAL_INT_ENA    at 0 range 20 .. 20;
      Reserved_21_31           at 0 range 21 .. 31;
   end record;

   --  rtc configure register
   type INT_RAW_RTC_Register is record
      --  Read-only. sleep wakeup interrupt raw
      SLP_WAKEUP_INT_RAW       : Boolean;
      --  Read-only. sleep reject interrupt raw
      SLP_REJECT_INT_RAW       : Boolean;
      --  unspecified
      Reserved_2_2             : HAL.Bit;
      --  Read-only. RTC WDT interrupt raw
      RTC_WDT_INT_RAW          : Boolean;
      --  unspecified
      Reserved_4_8             : HAL.UInt5;
      --  Read-only. brown out interrupt raw
      RTC_BROWN_OUT_INT_RAW    : Boolean;
      --  Read-only. RTC main timer interrupt raw
      RTC_MAIN_TIMER_INT_RAW   : Boolean;
      --  unspecified
      Reserved_11_14           : HAL.UInt4;
      --  Read-only. super watch dog interrupt raw
      RTC_SWD_INT_RAW          : Boolean;
      --  Read-only. xtal32k dead detection interrupt raw
      RTC_XTAL32K_DEAD_INT_RAW : Boolean;
      --  unspecified
      Reserved_17_18           : HAL.UInt2;
      --  Read-only. glitch_det_interrupt_raw
      RTC_GLITCH_DET_INT_RAW   : Boolean;
      --  Read-only. bbpll cal end interrupt state
      RTC_BBPLL_CAL_INT_RAW    : Boolean;
      --  unspecified
      Reserved_21_31           : HAL.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_RTC_Register use record
      SLP_WAKEUP_INT_RAW       at 0 range 0 .. 0;
      SLP_REJECT_INT_RAW       at 0 range 1 .. 1;
      Reserved_2_2             at 0 range 2 .. 2;
      RTC_WDT_INT_RAW          at 0 range 3 .. 3;
      Reserved_4_8             at 0 range 4 .. 8;
      RTC_BROWN_OUT_INT_RAW    at 0 range 9 .. 9;
      RTC_MAIN_TIMER_INT_RAW   at 0 range 10 .. 10;
      Reserved_11_14           at 0 range 11 .. 14;
      RTC_SWD_INT_RAW          at 0 range 15 .. 15;
      RTC_XTAL32K_DEAD_INT_RAW at 0 range 16 .. 16;
      Reserved_17_18           at 0 range 17 .. 18;
      RTC_GLITCH_DET_INT_RAW   at 0 range 19 .. 19;
      RTC_BBPLL_CAL_INT_RAW    at 0 range 20 .. 20;
      Reserved_21_31           at 0 range 21 .. 31;
   end record;

   --  rtc configure register
   type INT_ST_RTC_Register is record
      --  Read-only. sleep wakeup interrupt state
      SLP_WAKEUP_INT_ST       : Boolean;
      --  Read-only. sleep reject interrupt state
      SLP_REJECT_INT_ST       : Boolean;
      --  unspecified
      Reserved_2_2            : HAL.Bit;
      --  Read-only. RTC WDT interrupt state
      RTC_WDT_INT_ST          : Boolean;
      --  unspecified
      Reserved_4_8            : HAL.UInt5;
      --  Read-only. brown out interrupt state
      RTC_BROWN_OUT_INT_ST    : Boolean;
      --  Read-only. RTC main timer interrupt state
      RTC_MAIN_TIMER_INT_ST   : Boolean;
      --  unspecified
      Reserved_11_14          : HAL.UInt4;
      --  Read-only. super watch dog interrupt state
      RTC_SWD_INT_ST          : Boolean;
      --  Read-only. xtal32k dead detection interrupt state
      RTC_XTAL32K_DEAD_INT_ST : Boolean;
      --  unspecified
      Reserved_17_18          : HAL.UInt2;
      --  Read-only. glitch_det_interrupt state
      RTC_GLITCH_DET_INT_ST   : Boolean;
      --  Read-only. bbpll cal end interrupt state
      RTC_BBPLL_CAL_INT_ST    : Boolean;
      --  unspecified
      Reserved_21_31          : HAL.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_RTC_Register use record
      SLP_WAKEUP_INT_ST       at 0 range 0 .. 0;
      SLP_REJECT_INT_ST       at 0 range 1 .. 1;
      Reserved_2_2            at 0 range 2 .. 2;
      RTC_WDT_INT_ST          at 0 range 3 .. 3;
      Reserved_4_8            at 0 range 4 .. 8;
      RTC_BROWN_OUT_INT_ST    at 0 range 9 .. 9;
      RTC_MAIN_TIMER_INT_ST   at 0 range 10 .. 10;
      Reserved_11_14          at 0 range 11 .. 14;
      RTC_SWD_INT_ST          at 0 range 15 .. 15;
      RTC_XTAL32K_DEAD_INT_ST at 0 range 16 .. 16;
      Reserved_17_18          at 0 range 17 .. 18;
      RTC_GLITCH_DET_INT_ST   at 0 range 19 .. 19;
      RTC_BBPLL_CAL_INT_ST    at 0 range 20 .. 20;
      Reserved_21_31          at 0 range 21 .. 31;
   end record;

   --  rtc configure register
   type INT_CLR_RTC_Register is record
      --  Write-only. Clear sleep wakeup interrupt state
      SLP_WAKEUP_INT_CLR       : Boolean := False;
      --  Write-only. Clear sleep reject interrupt state
      SLP_REJECT_INT_CLR       : Boolean := False;
      --  unspecified
      Reserved_2_2             : HAL.Bit := 16#0#;
      --  Write-only. Clear RTC WDT interrupt state
      RTC_WDT_INT_CLR          : Boolean := False;
      --  unspecified
      Reserved_4_8             : HAL.UInt5 := 16#0#;
      --  Write-only. Clear brown out interrupt state
      RTC_BROWN_OUT_INT_CLR    : Boolean := False;
      --  Write-only. Clear RTC main timer interrupt state
      RTC_MAIN_TIMER_INT_CLR   : Boolean := False;
      --  unspecified
      Reserved_11_14           : HAL.UInt4 := 16#0#;
      --  Write-only. Clear super watch dog interrupt state
      RTC_SWD_INT_CLR          : Boolean := False;
      --  Write-only. Clear RTC WDT interrupt state
      RTC_XTAL32K_DEAD_INT_CLR : Boolean := False;
      --  unspecified
      Reserved_17_18           : HAL.UInt2 := 16#0#;
      --  Write-only. Clear glitch det interrupt state
      RTC_GLITCH_DET_INT_CLR   : Boolean := False;
      --  Write-only. clear bbpll cal end interrupt state
      RTC_BBPLL_CAL_INT_CLR    : Boolean := False;
      --  unspecified
      Reserved_21_31           : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_RTC_Register use record
      SLP_WAKEUP_INT_CLR       at 0 range 0 .. 0;
      SLP_REJECT_INT_CLR       at 0 range 1 .. 1;
      Reserved_2_2             at 0 range 2 .. 2;
      RTC_WDT_INT_CLR          at 0 range 3 .. 3;
      Reserved_4_8             at 0 range 4 .. 8;
      RTC_BROWN_OUT_INT_CLR    at 0 range 9 .. 9;
      RTC_MAIN_TIMER_INT_CLR   at 0 range 10 .. 10;
      Reserved_11_14           at 0 range 11 .. 14;
      RTC_SWD_INT_CLR          at 0 range 15 .. 15;
      RTC_XTAL32K_DEAD_INT_CLR at 0 range 16 .. 16;
      Reserved_17_18           at 0 range 17 .. 18;
      RTC_GLITCH_DET_INT_CLR   at 0 range 19 .. 19;
      RTC_BBPLL_CAL_INT_CLR    at 0 range 20 .. 20;
      Reserved_21_31           at 0 range 21 .. 31;
   end record;

   subtype EXT_XTL_CONF_DGM_XTAL_32K_Field is HAL.UInt3;
   subtype EXT_XTL_CONF_DRES_XTAL_32K_Field is HAL.UInt3;
   subtype EXT_XTL_CONF_DAC_XTAL_32K_Field is HAL.UInt3;
   subtype EXT_XTL_CONF_RTC_WDT_STATE_Field is HAL.UInt3;

   --  rtc configure register
   type EXT_XTL_CONF_Register is record
      --  xtal 32k watch dog enable
      XTAL32K_WDT_EN       : Boolean := False;
      --  xtal 32k watch dog clock force on
      XTAL32K_WDT_CLK_FO   : Boolean := False;
      --  xtal 32k watch dog sw reset
      XTAL32K_WDT_RESET    : Boolean := False;
      --  xtal 32k external xtal clock force on
      XTAL32K_EXT_CLK_FO   : Boolean := False;
      --  xtal 32k switch to back up clock when xtal is dead
      XTAL32K_AUTO_BACKUP  : Boolean := False;
      --  xtal 32k restart xtal when xtal is dead
      XTAL32K_AUTO_RESTART : Boolean := False;
      --  xtal 32k switch back xtal when xtal is restarted
      XTAL32K_AUTO_RETURN  : Boolean := False;
      --  Xtal 32k xpd control by sw or fsm
      XTAL32K_XPD_FORCE    : Boolean := True;
      --  apply an internal clock to help xtal 32k to start
      ENCKINIT_XTAL_32K    : Boolean := False;
      --  0: single-end buffer 1: differential buffer
      DBUF_XTAL_32K        : Boolean := False;
      --  xtal_32k gm control
      DGM_XTAL_32K         : EXT_XTL_CONF_DGM_XTAL_32K_Field := 16#3#;
      --  DRES_XTAL_32K
      DRES_XTAL_32K        : EXT_XTL_CONF_DRES_XTAL_32K_Field := 16#3#;
      --  XPD_XTAL_32K
      XPD_XTAL_32K         : Boolean := False;
      --  DAC_XTAL_32K
      DAC_XTAL_32K         : EXT_XTL_CONF_DAC_XTAL_32K_Field := 16#3#;
      --  Read-only. state of 32k_wdt
      RTC_WDT_STATE        : EXT_XTL_CONF_RTC_WDT_STATE_Field := 16#0#;
      --  XTAL_32K sel. 0: external XTAL_32K
      RTC_XTAL32K_GPIO_SEL : Boolean := False;
      --  unspecified
      Reserved_24_29       : HAL.UInt6 := 16#0#;
      --  0: power down XTAL at high level
      XTL_EXT_CTR_LV       : Boolean := False;
      --  enable gpio configure xtal power on
      XTL_EXT_CTR_EN       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXT_XTL_CONF_Register use record
      XTAL32K_WDT_EN       at 0 range 0 .. 0;
      XTAL32K_WDT_CLK_FO   at 0 range 1 .. 1;
      XTAL32K_WDT_RESET    at 0 range 2 .. 2;
      XTAL32K_EXT_CLK_FO   at 0 range 3 .. 3;
      XTAL32K_AUTO_BACKUP  at 0 range 4 .. 4;
      XTAL32K_AUTO_RESTART at 0 range 5 .. 5;
      XTAL32K_AUTO_RETURN  at 0 range 6 .. 6;
      XTAL32K_XPD_FORCE    at 0 range 7 .. 7;
      ENCKINIT_XTAL_32K    at 0 range 8 .. 8;
      DBUF_XTAL_32K        at 0 range 9 .. 9;
      DGM_XTAL_32K         at 0 range 10 .. 12;
      DRES_XTAL_32K        at 0 range 13 .. 15;
      XPD_XTAL_32K         at 0 range 16 .. 16;
      DAC_XTAL_32K         at 0 range 17 .. 19;
      RTC_WDT_STATE        at 0 range 20 .. 22;
      RTC_XTAL32K_GPIO_SEL at 0 range 23 .. 23;
      Reserved_24_29       at 0 range 24 .. 29;
      XTL_EXT_CTR_LV       at 0 range 30 .. 30;
      XTL_EXT_CTR_EN       at 0 range 31 .. 31;
   end record;

   --  rtc configure register
   type EXT_WAKEUP_CONF_Register is record
      --  unspecified
      Reserved_0_30      : HAL.UInt31 := 16#0#;
      --  enable filter for gpio wakeup event
      GPIO_WAKEUP_FILTER : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXT_WAKEUP_CONF_Register use record
      Reserved_0_30      at 0 range 0 .. 30;
      GPIO_WAKEUP_FILTER at 0 range 31 .. 31;
   end record;

   subtype SLP_REJECT_CONF_RTC_SLEEP_REJECT_ENA_Field is HAL.UInt18;

   --  rtc configure register
   type SLP_REJECT_CONF_Register is record
      --  unspecified
      Reserved_0_11        : HAL.UInt12 := 16#0#;
      --  sleep reject enable
      RTC_SLEEP_REJECT_ENA : SLP_REJECT_CONF_RTC_SLEEP_REJECT_ENA_Field :=
                              16#0#;
      --  enable reject for light sleep
      LIGHT_SLP_REJECT_EN  : Boolean := False;
      --  enable reject for deep sleep
      DEEP_SLP_REJECT_EN   : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLP_REJECT_CONF_Register use record
      Reserved_0_11        at 0 range 0 .. 11;
      RTC_SLEEP_REJECT_ENA at 0 range 12 .. 29;
      LIGHT_SLP_REJECT_EN  at 0 range 30 .. 30;
      DEEP_SLP_REJECT_EN   at 0 range 31 .. 31;
   end record;

   subtype CPU_PERIOD_CONF_RTC_CPUPERIOD_SEL_Field is HAL.UInt2;

   --  rtc configure register
   type CPU_PERIOD_CONF_Register is record
      --  unspecified
      Reserved_0_28     : HAL.UInt29 := 16#0#;
      --  CPU sel option
      RTC_CPUSEL_CONF   : Boolean := False;
      --  CPU clk sel option
      RTC_CPUPERIOD_SEL : CPU_PERIOD_CONF_RTC_CPUPERIOD_SEL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_PERIOD_CONF_Register use record
      Reserved_0_28     at 0 range 0 .. 28;
      RTC_CPUSEL_CONF   at 0 range 29 .. 29;
      RTC_CPUPERIOD_SEL at 0 range 30 .. 31;
   end record;

   subtype CLK_CONF_CK8M_DIV_Field is HAL.UInt2;
   subtype CLK_CONF_CK8M_DIV_SEL_Field is HAL.UInt3;
   subtype CLK_CONF_CK8M_DFREQ_Field is HAL.Byte;
   subtype CLK_CONF_ANA_CLK_RTC_SEL_Field is HAL.UInt2;

   --  rtc configure register
   type CLK_CONF_Register is record
      --  unspecified
      Reserved_0_0               : HAL.Bit := 16#0#;
      --  efuse_clk_force_gating
      EFUSE_CLK_FORCE_GATING     : Boolean := False;
      --  efuse_clk_force_nogating
      EFUSE_CLK_FORCE_NOGATING   : Boolean := False;
      --  used to sync reg_ck8m_div_sel bus. Clear vld before set
      --  reg_ck8m_div_sel
      CK8M_DIV_SEL_VLD           : Boolean := True;
      --  CK8M_D256_OUT divider. 00: div128
      CK8M_DIV                   : CLK_CONF_CK8M_DIV_Field := 16#1#;
      --  disable CK8M and CK8M_D256_OUT
      ENB_CK8M                   : Boolean := False;
      --  1: CK8M_D256_OUT is actually CK8M
      ENB_CK8M_DIV               : Boolean := False;
      --  enable CK_XTAL_32K for digital core (no relationship with RTC core)
      DIG_XTAL32K_EN             : Boolean := False;
      --  enable CK8M_D256_OUT for digital core (no relationship with RTC core)
      DIG_CLK8M_D256_EN          : Boolean := True;
      --  enable CK8M for digital core (no relationship with RTC core)
      DIG_CLK8M_EN               : Boolean := False;
      --  unspecified
      Reserved_11_11             : HAL.Bit := 16#0#;
      --  divider = reg_ck8m_div_sel + 1
      CK8M_DIV_SEL               : CLK_CONF_CK8M_DIV_SEL_Field := 16#3#;
      --  XTAL force no gating during sleep
      XTAL_FORCE_NOGATING        : Boolean := False;
      --  CK8M force no gating during sleep
      CK8M_FORCE_NOGATING        : Boolean := False;
      --  CK8M_DFREQ
      CK8M_DFREQ                 : CLK_CONF_CK8M_DFREQ_Field := 16#AC#;
      --  CK8M force power down
      CK8M_FORCE_PD              : Boolean := False;
      --  CK8M force power up
      CK8M_FORCE_PU              : Boolean := False;
      --  force enable xtal clk gating
      XTAL_GLOBAL_FORCE_GATING   : Boolean := False;
      --  force bypass xtal clk gating
      XTAL_GLOBAL_FORCE_NOGATING : Boolean := True;
      --  fast_clk_rtc sel. 0: XTAL div 4
      FAST_CLK_RTC_SEL           : Boolean := False;
      --  slelect rtc slow clk
      ANA_CLK_RTC_SEL            : CLK_CONF_ANA_CLK_RTC_SEL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_CONF_Register use record
      Reserved_0_0               at 0 range 0 .. 0;
      EFUSE_CLK_FORCE_GATING     at 0 range 1 .. 1;
      EFUSE_CLK_FORCE_NOGATING   at 0 range 2 .. 2;
      CK8M_DIV_SEL_VLD           at 0 range 3 .. 3;
      CK8M_DIV                   at 0 range 4 .. 5;
      ENB_CK8M                   at 0 range 6 .. 6;
      ENB_CK8M_DIV               at 0 range 7 .. 7;
      DIG_XTAL32K_EN             at 0 range 8 .. 8;
      DIG_CLK8M_D256_EN          at 0 range 9 .. 9;
      DIG_CLK8M_EN               at 0 range 10 .. 10;
      Reserved_11_11             at 0 range 11 .. 11;
      CK8M_DIV_SEL               at 0 range 12 .. 14;
      XTAL_FORCE_NOGATING        at 0 range 15 .. 15;
      CK8M_FORCE_NOGATING        at 0 range 16 .. 16;
      CK8M_DFREQ                 at 0 range 17 .. 24;
      CK8M_FORCE_PD              at 0 range 25 .. 25;
      CK8M_FORCE_PU              at 0 range 26 .. 26;
      XTAL_GLOBAL_FORCE_GATING   at 0 range 27 .. 27;
      XTAL_GLOBAL_FORCE_NOGATING at 0 range 28 .. 28;
      FAST_CLK_RTC_SEL           at 0 range 29 .. 29;
      ANA_CLK_RTC_SEL            at 0 range 30 .. 31;
   end record;

   subtype SLOW_CLK_CONF_RTC_ANA_CLK_DIV_Field is HAL.Byte;

   --  rtc configure register
   type SLOW_CLK_CONF_Register is record
      --  unspecified
      Reserved_0_21          : HAL.UInt22 := 16#0#;
      --  used to sync div bus. clear vld before set reg_rtc_ana_clk_div
      RTC_ANA_CLK_DIV_VLD    : Boolean := True;
      --  the clk divider num of RTC_CLK
      RTC_ANA_CLK_DIV        : SLOW_CLK_CONF_RTC_ANA_CLK_DIV_Field := 16#0#;
      --  flag rtc_slow_clk_next_edge
      RTC_SLOW_CLK_NEXT_EDGE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLOW_CLK_CONF_Register use record
      Reserved_0_21          at 0 range 0 .. 21;
      RTC_ANA_CLK_DIV_VLD    at 0 range 22 .. 22;
      RTC_ANA_CLK_DIV        at 0 range 23 .. 30;
      RTC_SLOW_CLK_NEXT_EDGE at 0 range 31 .. 31;
   end record;

   subtype SDIO_CONF_SDIO_TIMER_TARGET_Field is HAL.Byte;
   subtype SDIO_CONF_SDIO_DTHDRV_Field is HAL.UInt2;
   subtype SDIO_CONF_SDIO_DCAP_Field is HAL.UInt2;
   subtype SDIO_CONF_SDIO_INITI_Field is HAL.UInt2;
   subtype SDIO_CONF_SDIO_DCURLIM_Field is HAL.UInt3;
   subtype SDIO_CONF_DREFL_SDIO_Field is HAL.UInt2;
   subtype SDIO_CONF_DREFM_SDIO_Field is HAL.UInt2;
   subtype SDIO_CONF_DREFH_SDIO_Field is HAL.UInt2;

   --  rtc configure register
   type SDIO_CONF_Register is record
      --  timer count to apply reg_sdio_dcap after sdio power on
      SDIO_TIMER_TARGET            : SDIO_CONF_SDIO_TIMER_TARGET_Field :=
                                      16#A#;
      --  unspecified
      Reserved_8_8                 : HAL.Bit := 16#0#;
      --  Tieh = 1 mode drive ability. Initially set to 0 to limit charge
      --  current
      SDIO_DTHDRV                  : SDIO_CONF_SDIO_DTHDRV_Field := 16#3#;
      --  ability to prevent LDO from overshoot
      SDIO_DCAP                    : SDIO_CONF_SDIO_DCAP_Field := 16#3#;
      --  add resistor from ldo output to ground. 0: no res
      SDIO_INITI                   : SDIO_CONF_SDIO_INITI_Field := 16#1#;
      --  0 to set init[1:0]=0
      SDIO_EN_INITI                : Boolean := True;
      --  tune current limit threshold when tieh = 0. About 800mA/(8+d)
      SDIO_DCURLIM                 : SDIO_CONF_SDIO_DCURLIM_Field := 16#0#;
      --  select current limit mode
      SDIO_MODECURLIM              : Boolean := False;
      --  enable current limit
      SDIO_ENCURLIM                : Boolean := True;
      --  power down SDIO_REG in sleep. Only active when reg_sdio_force = 0
      SDIO_REG_PD_EN               : Boolean := True;
      --  1: use SW option to control SDIO_REG
      SDIO_FORCE                   : Boolean := False;
      --  SW option for SDIO_TIEH. Only active when reg_sdio_force = 1
      SDIO_TIEH                    : Boolean := True;
      --  Read-only. read only register for REG1P8_READY
      SDIO_CONF_Register_1P8_READY : Boolean := False;
      --  SW option for DREFL_SDIO. Only active when reg_sdio_force = 1
      DREFL_SDIO                   : SDIO_CONF_DREFL_SDIO_Field := 16#1#;
      --  SW option for DREFM_SDIO. Only active when reg_sdio_force = 1
      DREFM_SDIO                   : SDIO_CONF_DREFM_SDIO_Field := 16#1#;
      --  SW option for DREFH_SDIO. Only active when reg_sdio_force = 1
      DREFH_SDIO                   : SDIO_CONF_DREFH_SDIO_Field := 16#0#;
      XPD_SDIO                     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDIO_CONF_Register use record
      SDIO_TIMER_TARGET            at 0 range 0 .. 7;
      Reserved_8_8                 at 0 range 8 .. 8;
      SDIO_DTHDRV                  at 0 range 9 .. 10;
      SDIO_DCAP                    at 0 range 11 .. 12;
      SDIO_INITI                   at 0 range 13 .. 14;
      SDIO_EN_INITI                at 0 range 15 .. 15;
      SDIO_DCURLIM                 at 0 range 16 .. 18;
      SDIO_MODECURLIM              at 0 range 19 .. 19;
      SDIO_ENCURLIM                at 0 range 20 .. 20;
      SDIO_REG_PD_EN               at 0 range 21 .. 21;
      SDIO_FORCE                   at 0 range 22 .. 22;
      SDIO_TIEH                    at 0 range 23 .. 23;
      SDIO_CONF_Register_1P8_READY at 0 range 24 .. 24;
      DREFL_SDIO                   at 0 range 25 .. 26;
      DREFM_SDIO                   at 0 range 27 .. 28;
      DREFH_SDIO                   at 0 range 29 .. 30;
      XPD_SDIO                     at 0 range 31 .. 31;
   end record;

   subtype BIAS_CONF_DG_VDD_DRV_B_SLP_Field is HAL.Byte;
   subtype BIAS_CONF_DBG_ATTEN_DEEP_SLP_Field is HAL.UInt4;
   subtype BIAS_CONF_DBG_ATTEN_MONITOR_Field is HAL.UInt4;

   --  rtc configure register
   type BIAS_CONF_Register is record
      DG_VDD_DRV_B_SLP    : BIAS_CONF_DG_VDD_DRV_B_SLP_Field := 16#0#;
      DG_VDD_DRV_B_SLP_EN : Boolean := False;
      --  unspecified
      Reserved_9_9        : HAL.Bit := 16#0#;
      --  bias buf when rtc in normal work state
      BIAS_BUF_IDLE       : Boolean := False;
      --  bias buf when rtc in wakeup state
      BIAS_BUF_WAKE       : Boolean := True;
      --  bias buf when rtc in sleep state
      BIAS_BUF_DEEP_SLP   : Boolean := False;
      --  bias buf when rtc in monitor state
      BIAS_BUF_MONITOR    : Boolean := False;
      --  xpd cur when rtc in sleep_state
      PD_CUR_DEEP_SLP     : Boolean := False;
      --  xpd cur when rtc in monitor state
      PD_CUR_MONITOR      : Boolean := False;
      --  bias_sleep when rtc in sleep_state
      BIAS_SLEEP_DEEP_SLP : Boolean := True;
      --  bias_sleep when rtc in monitor state
      BIAS_SLEEP_MONITOR  : Boolean := False;
      --  DBG_ATTEN when rtc in sleep state
      DBG_ATTEN_DEEP_SLP  : BIAS_CONF_DBG_ATTEN_DEEP_SLP_Field := 16#0#;
      --  DBG_ATTEN when rtc in monitor state
      DBG_ATTEN_MONITOR   : BIAS_CONF_DBG_ATTEN_MONITOR_Field := 16#0#;
      --  unspecified
      Reserved_26_31      : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BIAS_CONF_Register use record
      DG_VDD_DRV_B_SLP    at 0 range 0 .. 7;
      DG_VDD_DRV_B_SLP_EN at 0 range 8 .. 8;
      Reserved_9_9        at 0 range 9 .. 9;
      BIAS_BUF_IDLE       at 0 range 10 .. 10;
      BIAS_BUF_WAKE       at 0 range 11 .. 11;
      BIAS_BUF_DEEP_SLP   at 0 range 12 .. 12;
      BIAS_BUF_MONITOR    at 0 range 13 .. 13;
      PD_CUR_DEEP_SLP     at 0 range 14 .. 14;
      PD_CUR_MONITOR      at 0 range 15 .. 15;
      BIAS_SLEEP_DEEP_SLP at 0 range 16 .. 16;
      BIAS_SLEEP_MONITOR  at 0 range 17 .. 17;
      DBG_ATTEN_DEEP_SLP  at 0 range 18 .. 21;
      DBG_ATTEN_MONITOR   at 0 range 22 .. 25;
      Reserved_26_31      at 0 range 26 .. 31;
   end record;

   subtype RTC_CNTL_SCK_DCAP_Field is HAL.Byte;

   --  rtc configure register
   type RTC_CNTL_Register is record
      --  unspecified
      Reserved_0_6       : HAL.UInt7 := 16#0#;
      --  software enable digital regulator cali
      DIG_REG_CAL_EN     : Boolean := False;
      --  unspecified
      Reserved_8_13      : HAL.UInt6 := 16#0#;
      --  SCK_DCAP
      SCK_DCAP           : RTC_CNTL_SCK_DCAP_Field := 16#0#;
      --  unspecified
      Reserved_22_27     : HAL.UInt6 := 16#0#;
      --  RTC_DBOOST force power down
      DBOOST_FORCE_PD    : Boolean := False;
      --  RTC_DBOOST force power up
      DBOOST_FORCE_PU    : Boolean := True;
      --  RTC_REG force power down (for RTC_REG power down means decrease the
      --  voltage to 0.8v or lower )
      REGULATOR_FORCE_PD : Boolean := False;
      --  RTC_REG force power up
      REGULATOR_FORCE_PU : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_CNTL_Register use record
      Reserved_0_6       at 0 range 0 .. 6;
      DIG_REG_CAL_EN     at 0 range 7 .. 7;
      Reserved_8_13      at 0 range 8 .. 13;
      SCK_DCAP           at 0 range 14 .. 21;
      Reserved_22_27     at 0 range 22 .. 27;
      DBOOST_FORCE_PD    at 0 range 28 .. 28;
      DBOOST_FORCE_PU    at 0 range 29 .. 29;
      REGULATOR_FORCE_PD at 0 range 30 .. 30;
      REGULATOR_FORCE_PU at 0 range 31 .. 31;
   end record;

   --  rtc configure register
   type PWC_Register is record
      --  unspecified
      Reserved_0_20      : HAL.UInt21 := 16#0#;
      --  rtc pad force hold
      RTC_PAD_FORCE_HOLD : Boolean := False;
      --  unspecified
      Reserved_22_31     : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWC_Register use record
      Reserved_0_20      at 0 range 0 .. 20;
      RTC_PAD_FORCE_HOLD at 0 range 21 .. 21;
      Reserved_22_31     at 0 range 22 .. 31;
   end record;

   subtype DIG_PWC_VDD_SPI_PWR_DRV_Field is HAL.UInt2;

   --  rtc configure register
   type DIG_PWC_Register is record
      --  vdd_spi drv's software value
      VDD_SPI_PWR_DRV       : DIG_PWC_VDD_SPI_PWR_DRV_Field := 16#0#;
      --  vdd_spi drv use software value
      VDD_SPI_PWR_FORCE     : Boolean := False;
      --  memories in digital core force PD in sleep
      LSLP_MEM_FORCE_PD     : Boolean := False;
      --  memories in digital core force PU in sleep
      LSLP_MEM_FORCE_PU     : Boolean := True;
      --  unspecified
      Reserved_5_10         : HAL.UInt6 := 16#0#;
      --  bt force power down
      BT_FORCE_PD           : Boolean := False;
      --  bt force power up
      BT_FORCE_PU           : Boolean := True;
      --  digital peri force power down
      DG_PERI_FORCE_PD      : Boolean := False;
      --  digital peri force power up
      DG_PERI_FORCE_PU      : Boolean := True;
      --  fastmemory retention mode in sleep
      RTC_FASTMEM_FORCE_LPD : Boolean := False;
      --  fastmemory donlt entry retention mode in sleep
      RTC_FASTMEM_FORCE_LPU : Boolean := True;
      --  wifi force power down
      WIFI_FORCE_PD         : Boolean := False;
      --  wifi force power up
      WIFI_FORCE_PU         : Boolean := True;
      --  digital core force power down
      DG_WRAP_FORCE_PD      : Boolean := False;
      --  digital core force power up
      DG_WRAP_FORCE_PU      : Boolean := True;
      --  cpu core force power down
      CPU_TOP_FORCE_PD      : Boolean := False;
      --  cpu force power up
      CPU_TOP_FORCE_PU      : Boolean := True;
      --  unspecified
      Reserved_23_26        : HAL.UInt4 := 16#0#;
      --  enable power down bt in sleep
      BT_PD_EN              : Boolean := False;
      --  enable power down digital peri in sleep
      DG_PERI_PD_EN         : Boolean := False;
      --  enable power down cpu in sleep
      CPU_TOP_PD_EN         : Boolean := False;
      --  enable power down wifi in sleep
      WIFI_PD_EN            : Boolean := False;
      --  enable power down digital wrap in sleep
      DG_WRAP_PD_EN         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIG_PWC_Register use record
      VDD_SPI_PWR_DRV       at 0 range 0 .. 1;
      VDD_SPI_PWR_FORCE     at 0 range 2 .. 2;
      LSLP_MEM_FORCE_PD     at 0 range 3 .. 3;
      LSLP_MEM_FORCE_PU     at 0 range 4 .. 4;
      Reserved_5_10         at 0 range 5 .. 10;
      BT_FORCE_PD           at 0 range 11 .. 11;
      BT_FORCE_PU           at 0 range 12 .. 12;
      DG_PERI_FORCE_PD      at 0 range 13 .. 13;
      DG_PERI_FORCE_PU      at 0 range 14 .. 14;
      RTC_FASTMEM_FORCE_LPD at 0 range 15 .. 15;
      RTC_FASTMEM_FORCE_LPU at 0 range 16 .. 16;
      WIFI_FORCE_PD         at 0 range 17 .. 17;
      WIFI_FORCE_PU         at 0 range 18 .. 18;
      DG_WRAP_FORCE_PD      at 0 range 19 .. 19;
      DG_WRAP_FORCE_PU      at 0 range 20 .. 20;
      CPU_TOP_FORCE_PD      at 0 range 21 .. 21;
      CPU_TOP_FORCE_PU      at 0 range 22 .. 22;
      Reserved_23_26        at 0 range 23 .. 26;
      BT_PD_EN              at 0 range 27 .. 27;
      DG_PERI_PD_EN         at 0 range 28 .. 28;
      CPU_TOP_PD_EN         at 0 range 29 .. 29;
      WIFI_PD_EN            at 0 range 30 .. 30;
      DG_WRAP_PD_EN         at 0 range 31 .. 31;
   end record;

   --  rtc configure register
   type DIG_ISO_Register is record
      --  unspecified
      Reserved_0_6        : HAL.UInt7 := 16#0#;
      --  DIG_ISO force off
      FORCE_OFF           : Boolean := True;
      --  DIG_ISO force on
      FORCE_ON            : Boolean := False;
      --  Read-only. read only register to indicate digital pad auto-hold
      --  status
      DG_PAD_AUTOHOLD     : Boolean := False;
      --  Write-only. wtite only register to clear digital pad auto-hold
      CLR_DG_PAD_AUTOHOLD : Boolean := False;
      --  digital pad enable auto-hold
      DG_PAD_AUTOHOLD_EN  : Boolean := False;
      --  digital pad force no ISO
      DG_PAD_FORCE_NOISO  : Boolean := True;
      --  digital pad force ISO
      DG_PAD_FORCE_ISO    : Boolean := False;
      --  digital pad force un-hold
      DG_PAD_FORCE_UNHOLD : Boolean := True;
      --  digital pad force hold
      DG_PAD_FORCE_HOLD   : Boolean := False;
      --  unspecified
      Reserved_16_21      : HAL.UInt6 := 16#0#;
      --  bt force ISO
      BT_FORCE_ISO        : Boolean := False;
      --  bt force no ISO
      BT_FORCE_NOISO      : Boolean := True;
      --  Digital peri force ISO
      DG_PERI_FORCE_ISO   : Boolean := False;
      --  digital peri force no ISO
      DG_PERI_FORCE_NOISO : Boolean := True;
      --  cpu force ISO
      CPU_TOP_FORCE_ISO   : Boolean := False;
      --  cpu force no ISO
      CPU_TOP_FORCE_NOISO : Boolean := True;
      --  wifi force ISO
      WIFI_FORCE_ISO      : Boolean := False;
      --  wifi force no ISO
      WIFI_FORCE_NOISO    : Boolean := True;
      --  digital core force ISO
      DG_WRAP_FORCE_ISO   : Boolean := False;
      --  digital core force no ISO
      DG_WRAP_FORCE_NOISO : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIG_ISO_Register use record
      Reserved_0_6        at 0 range 0 .. 6;
      FORCE_OFF           at 0 range 7 .. 7;
      FORCE_ON            at 0 range 8 .. 8;
      DG_PAD_AUTOHOLD     at 0 range 9 .. 9;
      CLR_DG_PAD_AUTOHOLD at 0 range 10 .. 10;
      DG_PAD_AUTOHOLD_EN  at 0 range 11 .. 11;
      DG_PAD_FORCE_NOISO  at 0 range 12 .. 12;
      DG_PAD_FORCE_ISO    at 0 range 13 .. 13;
      DG_PAD_FORCE_UNHOLD at 0 range 14 .. 14;
      DG_PAD_FORCE_HOLD   at 0 range 15 .. 15;
      Reserved_16_21      at 0 range 16 .. 21;
      BT_FORCE_ISO        at 0 range 22 .. 22;
      BT_FORCE_NOISO      at 0 range 23 .. 23;
      DG_PERI_FORCE_ISO   at 0 range 24 .. 24;
      DG_PERI_FORCE_NOISO at 0 range 25 .. 25;
      CPU_TOP_FORCE_ISO   at 0 range 26 .. 26;
      CPU_TOP_FORCE_NOISO at 0 range 27 .. 27;
      WIFI_FORCE_ISO      at 0 range 28 .. 28;
      WIFI_FORCE_NOISO    at 0 range 29 .. 29;
      DG_WRAP_FORCE_ISO   at 0 range 30 .. 30;
      DG_WRAP_FORCE_NOISO at 0 range 31 .. 31;
   end record;

   subtype WDTCONFIG0_WDT_CHIP_RESET_WIDTH_Field is HAL.Byte;
   subtype WDTCONFIG0_WDT_SYS_RESET_LENGTH_Field is HAL.UInt3;
   subtype WDTCONFIG0_WDT_CPU_RESET_LENGTH_Field is HAL.UInt3;
   subtype WDTCONFIG0_WDT_STG3_Field is HAL.UInt3;
   subtype WDTCONFIG0_WDT_STG2_Field is HAL.UInt3;
   subtype WDTCONFIG0_WDT_STG1_Field is HAL.UInt3;
   subtype WDTCONFIG0_WDT_STG0_Field is HAL.UInt3;

   --  rtc configure register
   type WDTCONFIG0_Register is record
      --  chip reset siginal pulse width
      WDT_CHIP_RESET_WIDTH : WDTCONFIG0_WDT_CHIP_RESET_WIDTH_Field := 16#14#;
      --  wdt reset whole chip enable
      WDT_CHIP_RESET_EN    : Boolean := False;
      --  pause WDT in sleep
      WDT_PAUSE_IN_SLP     : Boolean := True;
      --  enable WDT reset APP CPU
      WDT_APPCPU_RESET_EN  : Boolean := False;
      --  enable WDT reset PRO CPU
      WDT_PROCPU_RESET_EN  : Boolean := False;
      --  enable WDT in flash boot
      WDT_FLASHBOOT_MOD_EN : Boolean := True;
      --  system reset counter length
      WDT_SYS_RESET_LENGTH : WDTCONFIG0_WDT_SYS_RESET_LENGTH_Field := 16#1#;
      --  CPU reset counter length
      WDT_CPU_RESET_LENGTH : WDTCONFIG0_WDT_CPU_RESET_LENGTH_Field := 16#1#;
      --  1: interrupt stage en
      WDT_STG3             : WDTCONFIG0_WDT_STG3_Field := 16#0#;
      --  1: interrupt stage en
      WDT_STG2             : WDTCONFIG0_WDT_STG2_Field := 16#0#;
      --  1: interrupt stage en
      WDT_STG1             : WDTCONFIG0_WDT_STG1_Field := 16#0#;
      --  1: interrupt stage en
      WDT_STG0             : WDTCONFIG0_WDT_STG0_Field := 16#0#;
      --  enable rtc wdt
      WDT_EN               : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDTCONFIG0_Register use record
      WDT_CHIP_RESET_WIDTH at 0 range 0 .. 7;
      WDT_CHIP_RESET_EN    at 0 range 8 .. 8;
      WDT_PAUSE_IN_SLP     at 0 range 9 .. 9;
      WDT_APPCPU_RESET_EN  at 0 range 10 .. 10;
      WDT_PROCPU_RESET_EN  at 0 range 11 .. 11;
      WDT_FLASHBOOT_MOD_EN at 0 range 12 .. 12;
      WDT_SYS_RESET_LENGTH at 0 range 13 .. 15;
      WDT_CPU_RESET_LENGTH at 0 range 16 .. 18;
      WDT_STG3             at 0 range 19 .. 21;
      WDT_STG2             at 0 range 22 .. 24;
      WDT_STG1             at 0 range 25 .. 27;
      WDT_STG0             at 0 range 28 .. 30;
      WDT_EN               at 0 range 31 .. 31;
   end record;

   --  rtc configure register
   type WDTFEED_Register is record
      --  unspecified
      Reserved_0_30 : HAL.UInt31 := 16#0#;
      --  Write-only. sw feed rtc wdt
      RTC_WDT_FEED  : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDTFEED_Register use record
      Reserved_0_30 at 0 range 0 .. 30;
      RTC_WDT_FEED  at 0 range 31 .. 31;
   end record;

   subtype SWD_CONF_SWD_SIGNAL_WIDTH_Field is HAL.UInt10;

   --  rtc configure register
   type SWD_CONF_Register is record
      --  Read-only. swd reset flag
      SWD_RESET_FLAG   : Boolean := False;
      --  Read-only. swd interrupt for feeding
      SWD_FEED_INT     : Boolean := False;
      --  unspecified
      Reserved_2_16    : HAL.UInt15 := 16#0#;
      --  Bypass swd rst
      SWD_BYPASS_RST   : Boolean := False;
      --  adjust signal width send to swd
      SWD_SIGNAL_WIDTH : SWD_CONF_SWD_SIGNAL_WIDTH_Field := 16#12C#;
      --  Write-only. reset swd reset flag
      SWD_RST_FLAG_CLR : Boolean := False;
      --  Write-only. Sw feed swd
      SWD_FEED         : Boolean := False;
      --  disabel SWD
      SWD_DISABLE      : Boolean := False;
      --  automatically feed swd when int comes
      SWD_AUTO_FEED_EN : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWD_CONF_Register use record
      SWD_RESET_FLAG   at 0 range 0 .. 0;
      SWD_FEED_INT     at 0 range 1 .. 1;
      Reserved_2_16    at 0 range 2 .. 16;
      SWD_BYPASS_RST   at 0 range 17 .. 17;
      SWD_SIGNAL_WIDTH at 0 range 18 .. 27;
      SWD_RST_FLAG_CLR at 0 range 28 .. 28;
      SWD_FEED         at 0 range 29 .. 29;
      SWD_DISABLE      at 0 range 30 .. 30;
      SWD_AUTO_FEED_EN at 0 range 31 .. 31;
   end record;

   subtype SW_CPU_STALL_SW_STALL_APPCPU_C1_Field is HAL.UInt6;
   subtype SW_CPU_STALL_SW_STALL_PROCPU_C1_Field is HAL.UInt6;

   --  rtc configure register
   type SW_CPU_STALL_Register is record
      --  unspecified
      Reserved_0_19      : HAL.UInt20 := 16#0#;
      --  {reg_sw_stall_appcpu_c1[5:0]
      SW_STALL_APPCPU_C1 : SW_CPU_STALL_SW_STALL_APPCPU_C1_Field := 16#0#;
      --  stall cpu by software
      SW_STALL_PROCPU_C1 : SW_CPU_STALL_SW_STALL_PROCPU_C1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SW_CPU_STALL_Register use record
      Reserved_0_19      at 0 range 0 .. 19;
      SW_STALL_APPCPU_C1 at 0 range 20 .. 25;
      SW_STALL_PROCPU_C1 at 0 range 26 .. 31;
   end record;

   subtype LOW_POWER_ST_RTC_MAIN_STATE_Field is HAL.UInt4;

   --  rtc configure register
   type LOW_POWER_ST_Register is record
      --  Read-only. rom0 power down
      XPD_ROM0                   : Boolean;
      --  unspecified
      Reserved_1_1               : HAL.Bit;
      --  Read-only. External DCDC power down
      XPD_DIG_DCDC               : Boolean;
      --  Read-only. rtc peripheral iso
      RTC_PERI_ISO               : Boolean;
      --  Read-only. rtc peripheral power down
      XPD_RTC_PERI               : Boolean;
      --  Read-only. wifi iso
      WIFI_ISO                   : Boolean;
      --  Read-only. wifi wrap power down
      XPD_WIFI                   : Boolean;
      --  Read-only. digital wrap iso
      DIG_ISO                    : Boolean;
      --  Read-only. digital wrap power down
      XPD_DIG                    : Boolean;
      --  Read-only. touch should start to work
      RTC_TOUCH_STATE_START      : Boolean;
      --  Read-only. touch is about to working. Switch rtc main state
      RTC_TOUCH_STATE_SWITCH     : Boolean;
      --  Read-only. touch is in sleep state
      RTC_TOUCH_STATE_SLP        : Boolean;
      --  Read-only. touch is done
      RTC_TOUCH_STATE_DONE       : Boolean;
      --  Read-only. ulp/cocpu should start to work
      RTC_COCPU_STATE_START      : Boolean;
      --  Read-only. ulp/cocpu is about to working. Switch rtc main state
      RTC_COCPU_STATE_SWITCH     : Boolean;
      --  Read-only. ulp/cocpu is in sleep state
      RTC_COCPU_STATE_SLP        : Boolean;
      --  Read-only. ulp/cocpu is done
      RTC_COCPU_STATE_DONE       : Boolean;
      --  Read-only. no use any more
      RTC_MAIN_STATE_XTAL_ISO    : Boolean;
      --  Read-only. rtc main state machine is in states that pll should be
      --  running
      RTC_MAIN_STATE_PLL_ON      : Boolean;
      --  Read-only. rtc is ready to receive wake up trigger from wake up
      --  source
      RTC_RDY_FOR_WAKEUP         : Boolean;
      --  Read-only. rtc main state machine has been waited for some cycles
      RTC_MAIN_STATE_WAIT_END    : Boolean;
      --  Read-only. rtc main state machine is in the states of wakeup process
      RTC_IN_WAKEUP_STATE        : Boolean;
      --  Read-only. rtc main state machine is in the states of low power
      RTC_IN_LOW_POWER_STATE     : Boolean;
      --  Read-only. rtc main state machine is in wait 8m state
      RTC_MAIN_STATE_IN_WAIT_8M  : Boolean;
      --  Read-only. rtc main state machine is in wait pll state
      RTC_MAIN_STATE_IN_WAIT_PLL : Boolean;
      --  Read-only. rtc main state machine is in wait xtal state
      RTC_MAIN_STATE_IN_WAIT_XTL : Boolean;
      --  Read-only. rtc main state machine is in sleep state
      RTC_MAIN_STATE_IN_SLP      : Boolean;
      --  Read-only. rtc main state machine is in idle state
      RTC_MAIN_STATE_IN_IDLE     : Boolean;
      --  Read-only. rtc main state machine status
      RTC_MAIN_STATE             : LOW_POWER_ST_RTC_MAIN_STATE_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOW_POWER_ST_Register use record
      XPD_ROM0                   at 0 range 0 .. 0;
      Reserved_1_1               at 0 range 1 .. 1;
      XPD_DIG_DCDC               at 0 range 2 .. 2;
      RTC_PERI_ISO               at 0 range 3 .. 3;
      XPD_RTC_PERI               at 0 range 4 .. 4;
      WIFI_ISO                   at 0 range 5 .. 5;
      XPD_WIFI                   at 0 range 6 .. 6;
      DIG_ISO                    at 0 range 7 .. 7;
      XPD_DIG                    at 0 range 8 .. 8;
      RTC_TOUCH_STATE_START      at 0 range 9 .. 9;
      RTC_TOUCH_STATE_SWITCH     at 0 range 10 .. 10;
      RTC_TOUCH_STATE_SLP        at 0 range 11 .. 11;
      RTC_TOUCH_STATE_DONE       at 0 range 12 .. 12;
      RTC_COCPU_STATE_START      at 0 range 13 .. 13;
      RTC_COCPU_STATE_SWITCH     at 0 range 14 .. 14;
      RTC_COCPU_STATE_SLP        at 0 range 15 .. 15;
      RTC_COCPU_STATE_DONE       at 0 range 16 .. 16;
      RTC_MAIN_STATE_XTAL_ISO    at 0 range 17 .. 17;
      RTC_MAIN_STATE_PLL_ON      at 0 range 18 .. 18;
      RTC_RDY_FOR_WAKEUP         at 0 range 19 .. 19;
      RTC_MAIN_STATE_WAIT_END    at 0 range 20 .. 20;
      RTC_IN_WAKEUP_STATE        at 0 range 21 .. 21;
      RTC_IN_LOW_POWER_STATE     at 0 range 22 .. 22;
      RTC_MAIN_STATE_IN_WAIT_8M  at 0 range 23 .. 23;
      RTC_MAIN_STATE_IN_WAIT_PLL at 0 range 24 .. 24;
      RTC_MAIN_STATE_IN_WAIT_XTL at 0 range 25 .. 25;
      RTC_MAIN_STATE_IN_SLP      at 0 range 26 .. 26;
      RTC_MAIN_STATE_IN_IDLE     at 0 range 27 .. 27;
      RTC_MAIN_STATE             at 0 range 28 .. 31;
   end record;

   --  rtc configure register
   type PAD_HOLD_Register is record
      --  the hold configure of rtc gpio0
      RTC_GPIO_PIN0_HOLD : Boolean := False;
      --  the hold configure of rtc gpio1
      RTC_GPIO_PIN1_HOLD : Boolean := False;
      --  the hold configure of rtc gpio2
      RTC_GPIO_PIN2_HOLD : Boolean := False;
      --  the hold configure of rtc gpio3
      RTC_GPIO_PIN3_HOLD : Boolean := False;
      --  the hold configure of rtc gpio4
      RTC_GPIO_PIN4_HOLD : Boolean := False;
      --  the hold configure of rtc gpio5
      RTC_GPIO_PIN5_HOLD : Boolean := False;
      --  unspecified
      Reserved_6_31      : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAD_HOLD_Register use record
      RTC_GPIO_PIN0_HOLD at 0 range 0 .. 0;
      RTC_GPIO_PIN1_HOLD at 0 range 1 .. 1;
      RTC_GPIO_PIN2_HOLD at 0 range 2 .. 2;
      RTC_GPIO_PIN3_HOLD at 0 range 3 .. 3;
      RTC_GPIO_PIN4_HOLD at 0 range 4 .. 4;
      RTC_GPIO_PIN5_HOLD at 0 range 5 .. 5;
      Reserved_6_31      at 0 range 6 .. 31;
   end record;

   subtype BROWN_OUT_INT_WAIT_Field is HAL.UInt10;
   subtype BROWN_OUT_RST_WAIT_Field is HAL.UInt10;

   --  rtc configure register
   type BROWN_OUT_Register is record
      --  unspecified
      Reserved_0_3    : HAL.UInt4 := 16#0#;
      --  brown out interrupt wait cycles
      INT_WAIT        : BROWN_OUT_INT_WAIT_Field := 16#1#;
      --  enable close flash when brown out happens
      CLOSE_FLASH_ENA : Boolean := False;
      --  enable power down RF when brown out happens
      PD_RF_ENA       : Boolean := False;
      --  brown out reset wait cycles
      RST_WAIT        : BROWN_OUT_RST_WAIT_Field := 16#3FF#;
      --  enable brown out reset
      RST_ENA         : Boolean := False;
      --  1: 4-pos reset
      RST_SEL         : Boolean := False;
      --  brown_out origin reset enable
      ANA_RST_EN      : Boolean := False;
      --  Write-only. clear brown out counter
      CNT_CLR         : Boolean := False;
      --  enable brown out
      ENA             : Boolean := True;
      --  Read-only. the flag of brown det from analog
      DET             : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BROWN_OUT_Register use record
      Reserved_0_3    at 0 range 0 .. 3;
      INT_WAIT        at 0 range 4 .. 13;
      CLOSE_FLASH_ENA at 0 range 14 .. 14;
      PD_RF_ENA       at 0 range 15 .. 15;
      RST_WAIT        at 0 range 16 .. 25;
      RST_ENA         at 0 range 26 .. 26;
      RST_SEL         at 0 range 27 .. 27;
      ANA_RST_EN      at 0 range 28 .. 28;
      CNT_CLR         at 0 range 29 .. 29;
      ENA             at 0 range 30 .. 30;
      DET             at 0 range 31 .. 31;
   end record;

   subtype TIME_HIGH1_RTC_TIMER_VALUE1_HIGH_Field is HAL.UInt16;

   --  rtc configure register
   type TIME_HIGH1_Register is record
      --  Read-only. RTC timer high 16 bits
      RTC_TIMER_VALUE1_HIGH : TIME_HIGH1_RTC_TIMER_VALUE1_HIGH_Field;
      --  unspecified
      Reserved_16_31        : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIME_HIGH1_Register use record
      RTC_TIMER_VALUE1_HIGH at 0 range 0 .. 15;
      Reserved_16_31        at 0 range 16 .. 31;
   end record;

   subtype XTAL32K_CONF_XTAL32K_RETURN_WAIT_Field is HAL.UInt4;
   subtype XTAL32K_CONF_XTAL32K_RESTART_WAIT_Field is HAL.UInt16;
   subtype XTAL32K_CONF_XTAL32K_WDT_TIMEOUT_Field is HAL.Byte;
   subtype XTAL32K_CONF_XTAL32K_STABLE_THRES_Field is HAL.UInt4;

   --  rtc configure register
   type XTAL32K_CONF_Register is record
      --  cycles to wait to return noral xtal 32k
      XTAL32K_RETURN_WAIT  : XTAL32K_CONF_XTAL32K_RETURN_WAIT_Field := 16#0#;
      --  cycles to wait to repower on xtal 32k
      XTAL32K_RESTART_WAIT : XTAL32K_CONF_XTAL32K_RESTART_WAIT_Field := 16#0#;
      --  If no clock detected for this amount of time
      XTAL32K_WDT_TIMEOUT  : XTAL32K_CONF_XTAL32K_WDT_TIMEOUT_Field := 16#FF#;
      --  if restarted xtal32k period is smaller than this
      XTAL32K_STABLE_THRES : XTAL32K_CONF_XTAL32K_STABLE_THRES_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTAL32K_CONF_Register use record
      XTAL32K_RETURN_WAIT  at 0 range 0 .. 3;
      XTAL32K_RESTART_WAIT at 0 range 4 .. 19;
      XTAL32K_WDT_TIMEOUT  at 0 range 20 .. 27;
      XTAL32K_STABLE_THRES at 0 range 28 .. 31;
   end record;

   --  rtc configure register
   type USB_CONF_Register is record
      --  unspecified
      Reserved_0_17        : HAL.UInt18 := 16#0#;
      --  disable io_mux reset
      IO_MUX_RESET_DISABLE : Boolean := False;
      --  unspecified
      Reserved_19_31       : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_CONF_Register use record
      Reserved_0_17        at 0 range 0 .. 17;
      IO_MUX_RESET_DISABLE at 0 range 18 .. 18;
      Reserved_19_31       at 0 range 19 .. 31;
   end record;

   subtype SLP_REJECT_CAUSE_REJECT_CAUSE_Field is HAL.UInt18;

   --  RTC_CNTL_RTC_SLP_REJECT_CAUSE_REG
   type SLP_REJECT_CAUSE_Register is record
      --  Read-only. sleep reject cause
      REJECT_CAUSE   : SLP_REJECT_CAUSE_REJECT_CAUSE_Field;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLP_REJECT_CAUSE_Register use record
      REJECT_CAUSE   at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  rtc configure register
   type OPTION1_Register is record
      --  force chip entry download mode
      FORCE_DOWNLOAD_BOOT : Boolean := False;
      --  unspecified
      Reserved_1_31       : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPTION1_Register use record
      FORCE_DOWNLOAD_BOOT at 0 range 0 .. 0;
      Reserved_1_31       at 0 range 1 .. 31;
   end record;

   subtype SLP_WAKEUP_CAUSE_WAKEUP_CAUSE_Field is HAL.UInt17;

   --  RTC_CNTL_RTC_SLP_WAKEUP_CAUSE_REG
   type SLP_WAKEUP_CAUSE_Register is record
      --  Read-only. sleep wakeup cause
      WAKEUP_CAUSE   : SLP_WAKEUP_CAUSE_WAKEUP_CAUSE_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLP_WAKEUP_CAUSE_Register use record
      WAKEUP_CAUSE   at 0 range 0 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype ULP_CP_TIMER_1_ULP_CP_TIMER_SLP_CYCLE_Field is HAL.UInt24;

   --  rtc configure register
   type ULP_CP_TIMER_1_Register is record
      --  unspecified
      Reserved_0_7           : HAL.Byte := 16#0#;
      --  sleep cycles for ULP-coprocessor timer
      ULP_CP_TIMER_SLP_CYCLE : ULP_CP_TIMER_1_ULP_CP_TIMER_SLP_CYCLE_Field :=
                                16#C8#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ULP_CP_TIMER_1_Register use record
      Reserved_0_7           at 0 range 0 .. 7;
      ULP_CP_TIMER_SLP_CYCLE at 0 range 8 .. 31;
   end record;

   --  rtc configure register
   type INT_ENA_RTC_W1TS_Register is record
      --  Write-only. enable sleep wakeup interrupt
      SLP_WAKEUP_INT_ENA_W1TS       : Boolean := False;
      --  Write-only. enable sleep reject interrupt
      SLP_REJECT_INT_ENA_W1TS       : Boolean := False;
      --  unspecified
      Reserved_2_2                  : HAL.Bit := 16#0#;
      --  Write-only. enable RTC WDT interrupt
      RTC_WDT_INT_ENA_W1TS          : Boolean := False;
      --  unspecified
      Reserved_4_8                  : HAL.UInt5 := 16#0#;
      --  Write-only. enable brown out interrupt
      RTC_BROWN_OUT_INT_ENA_W1TS    : Boolean := False;
      --  Write-only. enable RTC main timer interrupt
      RTC_MAIN_TIMER_INT_ENA_W1TS   : Boolean := False;
      --  unspecified
      Reserved_11_14                : HAL.UInt4 := 16#0#;
      --  Write-only. enable super watch dog interrupt
      RTC_SWD_INT_ENA_W1TS          : Boolean := False;
      --  Write-only. enable xtal32k_dead interrupt
      RTC_XTAL32K_DEAD_INT_ENA_W1TS : Boolean := False;
      --  unspecified
      Reserved_17_18                : HAL.UInt2 := 16#0#;
      --  Write-only. enbale gitch det interrupt
      RTC_GLITCH_DET_INT_ENA_W1TS   : Boolean := False;
      --  Write-only. enbale bbpll cal interrupt
      RTC_BBPLL_CAL_INT_ENA_W1TS    : Boolean := False;
      --  unspecified
      Reserved_21_31                : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_RTC_W1TS_Register use record
      SLP_WAKEUP_INT_ENA_W1TS       at 0 range 0 .. 0;
      SLP_REJECT_INT_ENA_W1TS       at 0 range 1 .. 1;
      Reserved_2_2                  at 0 range 2 .. 2;
      RTC_WDT_INT_ENA_W1TS          at 0 range 3 .. 3;
      Reserved_4_8                  at 0 range 4 .. 8;
      RTC_BROWN_OUT_INT_ENA_W1TS    at 0 range 9 .. 9;
      RTC_MAIN_TIMER_INT_ENA_W1TS   at 0 range 10 .. 10;
      Reserved_11_14                at 0 range 11 .. 14;
      RTC_SWD_INT_ENA_W1TS          at 0 range 15 .. 15;
      RTC_XTAL32K_DEAD_INT_ENA_W1TS at 0 range 16 .. 16;
      Reserved_17_18                at 0 range 17 .. 18;
      RTC_GLITCH_DET_INT_ENA_W1TS   at 0 range 19 .. 19;
      RTC_BBPLL_CAL_INT_ENA_W1TS    at 0 range 20 .. 20;
      Reserved_21_31                at 0 range 21 .. 31;
   end record;

   --  rtc configure register
   type INT_ENA_RTC_W1TC_Register is record
      --  Write-only. clear sleep wakeup interrupt enable
      SLP_WAKEUP_INT_ENA_W1TC       : Boolean := False;
      --  Write-only. clear sleep reject interrupt enable
      SLP_REJECT_INT_ENA_W1TC       : Boolean := False;
      --  unspecified
      Reserved_2_2                  : HAL.Bit := 16#0#;
      --  Write-only. clear RTC WDT interrupt enable
      RTC_WDT_INT_ENA_W1TC          : Boolean := False;
      --  unspecified
      Reserved_4_8                  : HAL.UInt5 := 16#0#;
      --  Write-only. clear brown out interrupt enable
      RTC_BROWN_OUT_INT_ENA_W1TC    : Boolean := False;
      --  Write-only. Clear RTC main timer interrupt enable
      RTC_MAIN_TIMER_INT_ENA_W1TC   : Boolean := False;
      --  unspecified
      Reserved_11_14                : HAL.UInt4 := 16#0#;
      --  Write-only. clear super watch dog interrupt enable
      RTC_SWD_INT_ENA_W1TC          : Boolean := False;
      --  Write-only. clear xtal32k_dead interrupt enable
      RTC_XTAL32K_DEAD_INT_ENA_W1TC : Boolean := False;
      --  unspecified
      Reserved_17_18                : HAL.UInt2 := 16#0#;
      --  Write-only. clear gitch det interrupt enable
      RTC_GLITCH_DET_INT_ENA_W1TC   : Boolean := False;
      --  Write-only. clear bbpll cal interrupt enable
      RTC_BBPLL_CAL_INT_ENA_W1TC    : Boolean := False;
      --  unspecified
      Reserved_21_31                : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_RTC_W1TC_Register use record
      SLP_WAKEUP_INT_ENA_W1TC       at 0 range 0 .. 0;
      SLP_REJECT_INT_ENA_W1TC       at 0 range 1 .. 1;
      Reserved_2_2                  at 0 range 2 .. 2;
      RTC_WDT_INT_ENA_W1TC          at 0 range 3 .. 3;
      Reserved_4_8                  at 0 range 4 .. 8;
      RTC_BROWN_OUT_INT_ENA_W1TC    at 0 range 9 .. 9;
      RTC_MAIN_TIMER_INT_ENA_W1TC   at 0 range 10 .. 10;
      Reserved_11_14                at 0 range 11 .. 14;
      RTC_SWD_INT_ENA_W1TC          at 0 range 15 .. 15;
      RTC_XTAL32K_DEAD_INT_ENA_W1TC at 0 range 16 .. 16;
      Reserved_17_18                at 0 range 17 .. 18;
      RTC_GLITCH_DET_INT_ENA_W1TC   at 0 range 19 .. 19;
      RTC_BBPLL_CAL_INT_ENA_W1TC    at 0 range 20 .. 20;
      Reserved_21_31                at 0 range 21 .. 31;
   end record;

   subtype RETENTION_CTRL_RETENTION_DONE_WAIT_Field is HAL.UInt3;
   subtype RETENTION_CTRL_RETENTION_CLKOFF_WAIT_Field is HAL.UInt4;
   subtype RETENTION_CTRL_RETENTION_WAIT_Field is HAL.UInt5;

   --  rtc configure register
   type RETENTION_CTRL_Register is record
      --  unspecified
      Reserved_0_17         : HAL.UInt18 := 16#0#;
      --  Retention clk sel
      RETENTION_CLK_SEL     : Boolean := False;
      --  Retention done wait time
      RETENTION_DONE_WAIT   : RETENTION_CTRL_RETENTION_DONE_WAIT_Field :=
                               16#2#;
      --  Retention clkoff wait time
      RETENTION_CLKOFF_WAIT : RETENTION_CTRL_RETENTION_CLKOFF_WAIT_Field :=
                               16#3#;
      --  enable cpu retention when light sleep
      RETENTION_EN          : Boolean := False;
      --  wait cycles for rention operation
      RETENTION_WAIT        : RETENTION_CTRL_RETENTION_WAIT_Field := 16#14#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RETENTION_CTRL_Register use record
      Reserved_0_17         at 0 range 0 .. 17;
      RETENTION_CLK_SEL     at 0 range 18 .. 18;
      RETENTION_DONE_WAIT   at 0 range 19 .. 21;
      RETENTION_CLKOFF_WAIT at 0 range 22 .. 25;
      RETENTION_EN          at 0 range 26 .. 26;
      RETENTION_WAIT        at 0 range 27 .. 31;
   end record;

   subtype FIB_SEL_RTC_FIB_SEL_Field is HAL.UInt3;

   --  rtc configure register
   type FIB_SEL_Register is record
      --  select use analog fib signal
      RTC_FIB_SEL   : FIB_SEL_RTC_FIB_SEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIB_SEL_Register use record
      RTC_FIB_SEL   at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype GPIO_WAKEUP_RTC_GPIO_WAKEUP_STATUS_Field is HAL.UInt6;
   subtype GPIO_WAKEUP_RTC_GPIO_PIN5_INT_TYPE_Field is HAL.UInt3;
   subtype GPIO_WAKEUP_RTC_GPIO_PIN4_INT_TYPE_Field is HAL.UInt3;
   subtype GPIO_WAKEUP_RTC_GPIO_PIN3_INT_TYPE_Field is HAL.UInt3;
   subtype GPIO_WAKEUP_RTC_GPIO_PIN2_INT_TYPE_Field is HAL.UInt3;
   subtype GPIO_WAKEUP_RTC_GPIO_PIN1_INT_TYPE_Field is HAL.UInt3;
   subtype GPIO_WAKEUP_RTC_GPIO_PIN0_INT_TYPE_Field is HAL.UInt3;

   --  rtc configure register
   type GPIO_WAKEUP_Register is record
      --  Read-only. rtc gpio wakeup flag
      RTC_GPIO_WAKEUP_STATUS      : GPIO_WAKEUP_RTC_GPIO_WAKEUP_STATUS_Field :=
                                     16#0#;
      --  clear rtc gpio wakeup flag
      RTC_GPIO_WAKEUP_STATUS_CLR  : Boolean := False;
      --  enable rtc io clk gate
      RTC_GPIO_PIN_CLK_GATE       : Boolean := False;
      --  configure gpio wakeup type
      RTC_GPIO_PIN5_INT_TYPE      : GPIO_WAKEUP_RTC_GPIO_PIN5_INT_TYPE_Field :=
                                     16#0#;
      --  configure gpio wakeup type
      RTC_GPIO_PIN4_INT_TYPE      : GPIO_WAKEUP_RTC_GPIO_PIN4_INT_TYPE_Field :=
                                     16#0#;
      --  configure gpio wakeup type
      RTC_GPIO_PIN3_INT_TYPE      : GPIO_WAKEUP_RTC_GPIO_PIN3_INT_TYPE_Field :=
                                     16#0#;
      --  configure gpio wakeup type
      RTC_GPIO_PIN2_INT_TYPE      : GPIO_WAKEUP_RTC_GPIO_PIN2_INT_TYPE_Field :=
                                     16#0#;
      --  configure gpio wakeup type
      RTC_GPIO_PIN1_INT_TYPE      : GPIO_WAKEUP_RTC_GPIO_PIN1_INT_TYPE_Field :=
                                     16#0#;
      --  configure gpio wakeup type
      RTC_GPIO_PIN0_INT_TYPE      : GPIO_WAKEUP_RTC_GPIO_PIN0_INT_TYPE_Field :=
                                     16#0#;
      --  enable wakeup from rtc gpio5
      RTC_GPIO_PIN5_WAKEUP_ENABLE : Boolean := False;
      --  enable wakeup from rtc gpio4
      RTC_GPIO_PIN4_WAKEUP_ENABLE : Boolean := False;
      --  enable wakeup from rtc gpio3
      RTC_GPIO_PIN3_WAKEUP_ENABLE : Boolean := False;
      --  enable wakeup from rtc gpio2
      RTC_GPIO_PIN2_WAKEUP_ENABLE : Boolean := False;
      --  enable wakeup from rtc gpio1
      RTC_GPIO_PIN1_WAKEUP_ENABLE : Boolean := False;
      --  enable wakeup from rtc gpio0
      RTC_GPIO_PIN0_WAKEUP_ENABLE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_WAKEUP_Register use record
      RTC_GPIO_WAKEUP_STATUS      at 0 range 0 .. 5;
      RTC_GPIO_WAKEUP_STATUS_CLR  at 0 range 6 .. 6;
      RTC_GPIO_PIN_CLK_GATE       at 0 range 7 .. 7;
      RTC_GPIO_PIN5_INT_TYPE      at 0 range 8 .. 10;
      RTC_GPIO_PIN4_INT_TYPE      at 0 range 11 .. 13;
      RTC_GPIO_PIN3_INT_TYPE      at 0 range 14 .. 16;
      RTC_GPIO_PIN2_INT_TYPE      at 0 range 17 .. 19;
      RTC_GPIO_PIN1_INT_TYPE      at 0 range 20 .. 22;
      RTC_GPIO_PIN0_INT_TYPE      at 0 range 23 .. 25;
      RTC_GPIO_PIN5_WAKEUP_ENABLE at 0 range 26 .. 26;
      RTC_GPIO_PIN4_WAKEUP_ENABLE at 0 range 27 .. 27;
      RTC_GPIO_PIN3_WAKEUP_ENABLE at 0 range 28 .. 28;
      RTC_GPIO_PIN2_WAKEUP_ENABLE at 0 range 29 .. 29;
      RTC_GPIO_PIN1_WAKEUP_ENABLE at 0 range 30 .. 30;
      RTC_GPIO_PIN0_WAKEUP_ENABLE at 0 range 31 .. 31;
   end record;

   subtype DBG_SEL_RTC_DEBUG_BIT_SEL_Field is HAL.UInt5;
   --  DBG_SEL_RTC_DEBUG_SEL array element
   subtype DBG_SEL_RTC_DEBUG_SEL_Element is HAL.UInt5;

   --  DBG_SEL_RTC_DEBUG_SEL array
   type DBG_SEL_RTC_DEBUG_SEL_Field_Array is array (0 .. 4)
     of DBG_SEL_RTC_DEBUG_SEL_Element
     with Component_Size => 5, Size => 25;

   --  Type definition for DBG_SEL_RTC_DEBUG_SEL
   type DBG_SEL_RTC_DEBUG_SEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RTC_DEBUG_SEL as a value
            Val : HAL.UInt25;
         when True =>
            --  RTC_DEBUG_SEL as an array
            Arr : DBG_SEL_RTC_DEBUG_SEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 25;

   for DBG_SEL_RTC_DEBUG_SEL_Field use record
      Val at 0 range 0 .. 24;
      Arr at 0 range 0 .. 24;
   end record;

   --  rtc configure register
   type DBG_SEL_Register is record
      --  unspecified
      Reserved_0_0            : HAL.Bit := 16#0#;
      --  use for debug
      RTC_DEBUG_12M_NO_GATING : Boolean := False;
      --  use for debug
      RTC_DEBUG_BIT_SEL       : DBG_SEL_RTC_DEBUG_BIT_SEL_Field := 16#0#;
      --  use for debug
      RTC_DEBUG_SEL           : DBG_SEL_RTC_DEBUG_SEL_Field :=
                                 (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBG_SEL_Register use record
      Reserved_0_0            at 0 range 0 .. 0;
      RTC_DEBUG_12M_NO_GATING at 0 range 1 .. 1;
      RTC_DEBUG_BIT_SEL       at 0 range 2 .. 6;
      RTC_DEBUG_SEL           at 0 range 7 .. 31;
   end record;

   subtype DBG_MAP_RTC_GPIO_PIN5_FUN_SEL_Field is HAL.UInt4;
   subtype DBG_MAP_RTC_GPIO_PIN4_FUN_SEL_Field is HAL.UInt4;
   subtype DBG_MAP_RTC_GPIO_PIN3_FUN_SEL_Field is HAL.UInt4;
   subtype DBG_MAP_RTC_GPIO_PIN2_FUN_SEL_Field is HAL.UInt4;
   subtype DBG_MAP_RTC_GPIO_PIN1_FUN_SEL_Field is HAL.UInt4;
   subtype DBG_MAP_RTC_GPIO_PIN0_FUN_SEL_Field is HAL.UInt4;

   --  rtc configure register
   type DBG_MAP_Register is record
      --  unspecified
      Reserved_0_1          : HAL.UInt2 := 16#0#;
      --  use for debug
      RTC_GPIO_PIN5_MUX_SEL : Boolean := False;
      --  use for debug
      RTC_GPIO_PIN4_MUX_SEL : Boolean := False;
      --  use for debug
      RTC_GPIO_PIN3_MUX_SEL : Boolean := False;
      --  use for debug
      RTC_GPIO_PIN2_MUX_SEL : Boolean := False;
      --  use for debug
      RTC_GPIO_PIN1_MUX_SEL : Boolean := False;
      --  use for debug
      RTC_GPIO_PIN0_MUX_SEL : Boolean := False;
      --  use for debug
      RTC_GPIO_PIN5_FUN_SEL : DBG_MAP_RTC_GPIO_PIN5_FUN_SEL_Field := 16#0#;
      --  use for debug
      RTC_GPIO_PIN4_FUN_SEL : DBG_MAP_RTC_GPIO_PIN4_FUN_SEL_Field := 16#0#;
      --  use for debug
      RTC_GPIO_PIN3_FUN_SEL : DBG_MAP_RTC_GPIO_PIN3_FUN_SEL_Field := 16#0#;
      --  use for debug
      RTC_GPIO_PIN2_FUN_SEL : DBG_MAP_RTC_GPIO_PIN2_FUN_SEL_Field := 16#0#;
      --  use for debug
      RTC_GPIO_PIN1_FUN_SEL : DBG_MAP_RTC_GPIO_PIN1_FUN_SEL_Field := 16#0#;
      --  use for debug
      RTC_GPIO_PIN0_FUN_SEL : DBG_MAP_RTC_GPIO_PIN0_FUN_SEL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBG_MAP_Register use record
      Reserved_0_1          at 0 range 0 .. 1;
      RTC_GPIO_PIN5_MUX_SEL at 0 range 2 .. 2;
      RTC_GPIO_PIN4_MUX_SEL at 0 range 3 .. 3;
      RTC_GPIO_PIN3_MUX_SEL at 0 range 4 .. 4;
      RTC_GPIO_PIN2_MUX_SEL at 0 range 5 .. 5;
      RTC_GPIO_PIN1_MUX_SEL at 0 range 6 .. 6;
      RTC_GPIO_PIN0_MUX_SEL at 0 range 7 .. 7;
      RTC_GPIO_PIN5_FUN_SEL at 0 range 8 .. 11;
      RTC_GPIO_PIN4_FUN_SEL at 0 range 12 .. 15;
      RTC_GPIO_PIN3_FUN_SEL at 0 range 16 .. 19;
      RTC_GPIO_PIN2_FUN_SEL at 0 range 20 .. 23;
      RTC_GPIO_PIN1_FUN_SEL at 0 range 24 .. 27;
      RTC_GPIO_PIN0_FUN_SEL at 0 range 28 .. 31;
   end record;

   subtype SENSOR_CTRL_SAR2_PWDET_CCT_Field is HAL.UInt3;
   subtype SENSOR_CTRL_FORCE_XPD_SAR_Field is HAL.UInt2;

   --  rtc configure register
   type SENSOR_CTRL_Register is record
      --  unspecified
      Reserved_0_26  : HAL.UInt27 := 16#0#;
      --  reg_sar2_pwdet_cct
      SAR2_PWDET_CCT : SENSOR_CTRL_SAR2_PWDET_CCT_Field := 16#0#;
      --  force power up SAR
      FORCE_XPD_SAR  : SENSOR_CTRL_FORCE_XPD_SAR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SENSOR_CTRL_Register use record
      Reserved_0_26  at 0 range 0 .. 26;
      SAR2_PWDET_CCT at 0 range 27 .. 29;
      FORCE_XPD_SAR  at 0 range 30 .. 31;
   end record;

   subtype DBG_SAR_SEL_SAR_DEBUG_SEL_Field is HAL.UInt5;

   --  rtc configure register
   type DBG_SAR_SEL_Register is record
      --  unspecified
      Reserved_0_26 : HAL.UInt27 := 16#0#;
      --  use for debug
      SAR_DEBUG_SEL : DBG_SAR_SEL_SAR_DEBUG_SEL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBG_SAR_SEL_Register use record
      Reserved_0_26 at 0 range 0 .. 26;
      SAR_DEBUG_SEL at 0 range 27 .. 31;
   end record;

   subtype PG_CTRL_POWER_GLITCH_DSENSE_Field is HAL.UInt2;

   --  rtc configure register
   type PG_CTRL_Register is record
      --  unspecified
      Reserved_0_25          : HAL.UInt26 := 16#0#;
      --  power glitch desense
      POWER_GLITCH_DSENSE    : PG_CTRL_POWER_GLITCH_DSENSE_Field := 16#0#;
      --  force disable power glitch
      POWER_GLITCH_FORCE_PD  : Boolean := False;
      --  force enable power glitch
      POWER_GLITCH_FORCE_PU  : Boolean := False;
      --  use efuse value control power glitch enable
      POWER_GLITCH_EFUSE_SEL : Boolean := False;
      --  enable power glitch
      POWER_GLITCH_EN        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PG_CTRL_Register use record
      Reserved_0_25          at 0 range 0 .. 25;
      POWER_GLITCH_DSENSE    at 0 range 26 .. 27;
      POWER_GLITCH_FORCE_PD  at 0 range 28 .. 28;
      POWER_GLITCH_FORCE_PU  at 0 range 29 .. 29;
      POWER_GLITCH_EFUSE_SEL at 0 range 30 .. 30;
      POWER_GLITCH_EN        at 0 range 31 .. 31;
   end record;

   subtype DATE_RTC_CNTL_DATE_Field is HAL.UInt28;

   --  rtc configure register
   type DATE_Register is record
      --  verision
      RTC_CNTL_DATE  : DATE_RTC_CNTL_DATE_Field := 16#2007270#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      RTC_CNTL_DATE  at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Real-Time Clock Control
   type RTC_CNTL_Peripheral is record
      --  rtc configure register
      OPTIONS0           : aliased OPTIONS0_Register;
      --  rtc configure register
      SLP_TIMER0         : aliased HAL.UInt32;
      --  rtc configure register
      SLP_TIMER1         : aliased SLP_TIMER1_Register;
      --  rtc configure register
      TIME_UPDATE        : aliased TIME_UPDATE_Register;
      --  rtc configure register
      TIME_LOW0          : aliased HAL.UInt32;
      --  rtc configure register
      TIME_HIGH0         : aliased TIME_HIGH0_Register;
      --  rtc configure register
      STATE0             : aliased STATE0_Register;
      --  rtc configure register
      TIMER1             : aliased TIMER1_Register;
      --  rtc configure register
      TIMER2             : aliased TIMER2_Register;
      --  rtc configure register
      TIMER3             : aliased TIMER3_Register;
      --  rtc configure register
      TIMER4             : aliased TIMER4_Register;
      --  rtc configure register
      TIMER5             : aliased TIMER5_Register;
      --  rtc configure register
      TIMER6             : aliased TIMER6_Register;
      --  rtc configure register
      ANA_CONF           : aliased ANA_CONF_Register;
      --  rtc configure register
      RESET_STATE        : aliased RESET_STATE_Register;
      --  rtc configure register
      WAKEUP_STATE       : aliased WAKEUP_STATE_Register;
      --  rtc configure register
      INT_ENA_RTC        : aliased INT_ENA_RTC_Register;
      --  rtc configure register
      INT_RAW_RTC        : aliased INT_RAW_RTC_Register;
      --  rtc configure register
      INT_ST_RTC         : aliased INT_ST_RTC_Register;
      --  rtc configure register
      INT_CLR_RTC        : aliased INT_CLR_RTC_Register;
      --  rtc configure register
      STORE0             : aliased HAL.UInt32;
      --  rtc configure register
      STORE1             : aliased HAL.UInt32;
      --  rtc configure register
      STORE2             : aliased HAL.UInt32;
      --  rtc configure register
      STORE3             : aliased HAL.UInt32;
      --  rtc configure register
      EXT_XTL_CONF       : aliased EXT_XTL_CONF_Register;
      --  rtc configure register
      EXT_WAKEUP_CONF    : aliased EXT_WAKEUP_CONF_Register;
      --  rtc configure register
      SLP_REJECT_CONF    : aliased SLP_REJECT_CONF_Register;
      --  rtc configure register
      CPU_PERIOD_CONF    : aliased CPU_PERIOD_CONF_Register;
      --  rtc configure register
      CLK_CONF           : aliased CLK_CONF_Register;
      --  rtc configure register
      SLOW_CLK_CONF      : aliased SLOW_CLK_CONF_Register;
      --  rtc configure register
      SDIO_CONF          : aliased SDIO_CONF_Register;
      --  rtc configure register
      BIAS_CONF          : aliased BIAS_CONF_Register;
      --  rtc configure register
      RTC_CNTL           : aliased RTC_CNTL_Register;
      --  rtc configure register
      PWC                : aliased PWC_Register;
      --  rtc configure register
      DIG_PWC            : aliased DIG_PWC_Register;
      --  rtc configure register
      DIG_ISO            : aliased DIG_ISO_Register;
      --  rtc configure register
      WDTCONFIG0         : aliased WDTCONFIG0_Register;
      --  rtc configure register
      WDTCONFIG1         : aliased HAL.UInt32;
      --  rtc configure register
      WDTCONFIG2         : aliased HAL.UInt32;
      --  rtc configure register
      WDTCONFIG3         : aliased HAL.UInt32;
      --  rtc configure register
      WDTCONFIG4         : aliased HAL.UInt32;
      --  rtc configure register
      WDTFEED            : aliased WDTFEED_Register;
      --  rtc configure register
      WDTWPROTECT        : aliased HAL.UInt32;
      --  rtc configure register
      SWD_CONF           : aliased SWD_CONF_Register;
      --  rtc configure register
      SWD_WPROTECT       : aliased HAL.UInt32;
      --  rtc configure register
      SW_CPU_STALL       : aliased SW_CPU_STALL_Register;
      --  rtc configure register
      STORE4             : aliased HAL.UInt32;
      --  rtc configure register
      STORE5             : aliased HAL.UInt32;
      --  rtc configure register
      STORE6             : aliased HAL.UInt32;
      --  rtc configure register
      STORE7             : aliased HAL.UInt32;
      --  rtc configure register
      LOW_POWER_ST       : aliased LOW_POWER_ST_Register;
      --  rtc configure register
      DIAG0              : aliased HAL.UInt32;
      --  rtc configure register
      PAD_HOLD           : aliased PAD_HOLD_Register;
      --  rtc configure register
      DIG_PAD_HOLD       : aliased HAL.UInt32;
      --  rtc configure register
      BROWN_OUT          : aliased BROWN_OUT_Register;
      --  rtc configure register
      TIME_LOW1          : aliased HAL.UInt32;
      --  rtc configure register
      TIME_HIGH1         : aliased TIME_HIGH1_Register;
      --  rtc configure register
      XTAL32K_CLK_FACTOR : aliased HAL.UInt32;
      --  rtc configure register
      XTAL32K_CONF       : aliased XTAL32K_CONF_Register;
      --  rtc configure register
      USB_CONF           : aliased USB_CONF_Register;
      --  RTC_CNTL_RTC_SLP_REJECT_CAUSE_REG
      SLP_REJECT_CAUSE   : aliased SLP_REJECT_CAUSE_Register;
      --  rtc configure register
      OPTION1            : aliased OPTION1_Register;
      --  RTC_CNTL_RTC_SLP_WAKEUP_CAUSE_REG
      SLP_WAKEUP_CAUSE   : aliased SLP_WAKEUP_CAUSE_Register;
      --  rtc configure register
      ULP_CP_TIMER_1     : aliased ULP_CP_TIMER_1_Register;
      --  rtc configure register
      INT_ENA_RTC_W1TS   : aliased INT_ENA_RTC_W1TS_Register;
      --  rtc configure register
      INT_ENA_RTC_W1TC   : aliased INT_ENA_RTC_W1TC_Register;
      --  rtc configure register
      RETENTION_CTRL     : aliased RETENTION_CTRL_Register;
      --  rtc configure register
      FIB_SEL            : aliased FIB_SEL_Register;
      --  rtc configure register
      GPIO_WAKEUP        : aliased GPIO_WAKEUP_Register;
      --  rtc configure register
      DBG_SEL            : aliased DBG_SEL_Register;
      --  rtc configure register
      DBG_MAP            : aliased DBG_MAP_Register;
      --  rtc configure register
      SENSOR_CTRL        : aliased SENSOR_CTRL_Register;
      --  rtc configure register
      DBG_SAR_SEL        : aliased DBG_SAR_SEL_Register;
      --  rtc configure register
      PG_CTRL            : aliased PG_CTRL_Register;
      --  rtc configure register
      DATE               : aliased DATE_Register;
   end record
     with Volatile;

   for RTC_CNTL_Peripheral use record
      OPTIONS0           at 16#0# range 0 .. 31;
      SLP_TIMER0         at 16#4# range 0 .. 31;
      SLP_TIMER1         at 16#8# range 0 .. 31;
      TIME_UPDATE        at 16#C# range 0 .. 31;
      TIME_LOW0          at 16#10# range 0 .. 31;
      TIME_HIGH0         at 16#14# range 0 .. 31;
      STATE0             at 16#18# range 0 .. 31;
      TIMER1             at 16#1C# range 0 .. 31;
      TIMER2             at 16#20# range 0 .. 31;
      TIMER3             at 16#24# range 0 .. 31;
      TIMER4             at 16#28# range 0 .. 31;
      TIMER5             at 16#2C# range 0 .. 31;
      TIMER6             at 16#30# range 0 .. 31;
      ANA_CONF           at 16#34# range 0 .. 31;
      RESET_STATE        at 16#38# range 0 .. 31;
      WAKEUP_STATE       at 16#3C# range 0 .. 31;
      INT_ENA_RTC        at 16#40# range 0 .. 31;
      INT_RAW_RTC        at 16#44# range 0 .. 31;
      INT_ST_RTC         at 16#48# range 0 .. 31;
      INT_CLR_RTC        at 16#4C# range 0 .. 31;
      STORE0             at 16#50# range 0 .. 31;
      STORE1             at 16#54# range 0 .. 31;
      STORE2             at 16#58# range 0 .. 31;
      STORE3             at 16#5C# range 0 .. 31;
      EXT_XTL_CONF       at 16#60# range 0 .. 31;
      EXT_WAKEUP_CONF    at 16#64# range 0 .. 31;
      SLP_REJECT_CONF    at 16#68# range 0 .. 31;
      CPU_PERIOD_CONF    at 16#6C# range 0 .. 31;
      CLK_CONF           at 16#70# range 0 .. 31;
      SLOW_CLK_CONF      at 16#74# range 0 .. 31;
      SDIO_CONF          at 16#78# range 0 .. 31;
      BIAS_CONF          at 16#7C# range 0 .. 31;
      RTC_CNTL           at 16#80# range 0 .. 31;
      PWC                at 16#84# range 0 .. 31;
      DIG_PWC            at 16#88# range 0 .. 31;
      DIG_ISO            at 16#8C# range 0 .. 31;
      WDTCONFIG0         at 16#90# range 0 .. 31;
      WDTCONFIG1         at 16#94# range 0 .. 31;
      WDTCONFIG2         at 16#98# range 0 .. 31;
      WDTCONFIG3         at 16#9C# range 0 .. 31;
      WDTCONFIG4         at 16#A0# range 0 .. 31;
      WDTFEED            at 16#A4# range 0 .. 31;
      WDTWPROTECT        at 16#A8# range 0 .. 31;
      SWD_CONF           at 16#AC# range 0 .. 31;
      SWD_WPROTECT       at 16#B0# range 0 .. 31;
      SW_CPU_STALL       at 16#B4# range 0 .. 31;
      STORE4             at 16#B8# range 0 .. 31;
      STORE5             at 16#BC# range 0 .. 31;
      STORE6             at 16#C0# range 0 .. 31;
      STORE7             at 16#C4# range 0 .. 31;
      LOW_POWER_ST       at 16#C8# range 0 .. 31;
      DIAG0              at 16#CC# range 0 .. 31;
      PAD_HOLD           at 16#D0# range 0 .. 31;
      DIG_PAD_HOLD       at 16#D4# range 0 .. 31;
      BROWN_OUT          at 16#D8# range 0 .. 31;
      TIME_LOW1          at 16#DC# range 0 .. 31;
      TIME_HIGH1         at 16#E0# range 0 .. 31;
      XTAL32K_CLK_FACTOR at 16#E4# range 0 .. 31;
      XTAL32K_CONF       at 16#E8# range 0 .. 31;
      USB_CONF           at 16#EC# range 0 .. 31;
      SLP_REJECT_CAUSE   at 16#F0# range 0 .. 31;
      OPTION1            at 16#F4# range 0 .. 31;
      SLP_WAKEUP_CAUSE   at 16#F8# range 0 .. 31;
      ULP_CP_TIMER_1     at 16#FC# range 0 .. 31;
      INT_ENA_RTC_W1TS   at 16#100# range 0 .. 31;
      INT_ENA_RTC_W1TC   at 16#104# range 0 .. 31;
      RETENTION_CTRL     at 16#108# range 0 .. 31;
      FIB_SEL            at 16#10C# range 0 .. 31;
      GPIO_WAKEUP        at 16#110# range 0 .. 31;
      DBG_SEL            at 16#114# range 0 .. 31;
      DBG_MAP            at 16#118# range 0 .. 31;
      SENSOR_CTRL        at 16#11C# range 0 .. 31;
      DBG_SAR_SEL        at 16#120# range 0 .. 31;
      PG_CTRL            at 16#124# range 0 .. 31;
      DATE               at 16#1FC# range 0 .. 31;
   end record;

   --  Real-Time Clock Control
   RTC_CNTL_Periph : aliased RTC_CNTL_Peripheral
     with Import, Address => RTC_CNTL_Base;

end ESP32C3.RTC_CNTL;
