pragma Style_Checks (Off);

--  Copyright 2022 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c3.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32C3.TIMG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype T0CONFIG_T0_DIVIDER_Field is HAL.UInt16;

   --  TIMG_T0CONFIG_REG.
   type T0CONFIG_Register is record
      --  unspecified
      Reserved_0_8   : HAL.UInt9 := 16#0#;
      --  reg_t0_use_xtal.
      T0_USE_XTAL    : Boolean := False;
      --  reg_t0_alarm_en.
      T0_ALARM_EN    : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. reg_t0_divcnt_rst.
      T0_DIVCNT_RST  : Boolean := False;
      --  reg_t0_divider.
      T0_DIVIDER     : T0CONFIG_T0_DIVIDER_Field := 16#1#;
      --  reg_t0_autoreload.
      T0_AUTORELOAD  : Boolean := True;
      --  reg_t0_increase.
      T0_INCREASE    : Boolean := True;
      --  reg_t0_en.
      T0_EN          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for T0CONFIG_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      T0_USE_XTAL    at 0 range 9 .. 9;
      T0_ALARM_EN    at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      T0_DIVCNT_RST  at 0 range 12 .. 12;
      T0_DIVIDER     at 0 range 13 .. 28;
      T0_AUTORELOAD  at 0 range 29 .. 29;
      T0_INCREASE    at 0 range 30 .. 30;
      T0_EN          at 0 range 31 .. 31;
   end record;

   subtype T0HI_T0_HI_Field is HAL.UInt22;

   --  TIMG_T0HI_REG.
   type T0HI_Register is record
      --  Read-only. t0_hi
      T0_HI          : T0HI_T0_HI_Field;
      --  unspecified
      Reserved_22_31 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for T0HI_Register use record
      T0_HI          at 0 range 0 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  TIMG_T0UPDATE_REG.
   type T0UPDATE_Register is record
      --  unspecified
      Reserved_0_30 : HAL.UInt31 := 16#0#;
      --  t0_update
      T0_UPDATE     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for T0UPDATE_Register use record
      Reserved_0_30 at 0 range 0 .. 30;
      T0_UPDATE     at 0 range 31 .. 31;
   end record;

   subtype T0ALARMHI_T0_ALARM_HI_Field is HAL.UInt22;

   --  TIMG_T0ALARMHI_REG.
   type T0ALARMHI_Register is record
      --  reg_t0_alarm_hi.
      T0_ALARM_HI    : T0ALARMHI_T0_ALARM_HI_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for T0ALARMHI_Register use record
      T0_ALARM_HI    at 0 range 0 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype T0LOADHI_T0_LOAD_HI_Field is HAL.UInt22;

   --  TIMG_T0LOADHI_REG.
   type T0LOADHI_Register is record
      --  reg_t0_load_hi.
      T0_LOAD_HI     : T0LOADHI_T0_LOAD_HI_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for T0LOADHI_Register use record
      T0_LOAD_HI     at 0 range 0 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype WDTCONFIG0_WDT_SYS_RESET_LENGTH_Field is HAL.UInt3;
   subtype WDTCONFIG0_WDT_CPU_RESET_LENGTH_Field is HAL.UInt3;
   subtype WDTCONFIG0_WDT_STG3_Field is HAL.UInt2;
   subtype WDTCONFIG0_WDT_STG2_Field is HAL.UInt2;
   subtype WDTCONFIG0_WDT_STG1_Field is HAL.UInt2;
   subtype WDTCONFIG0_WDT_STG0_Field is HAL.UInt2;

   --  TIMG_WDTCONFIG0_REG.
   type WDTCONFIG0_Register is record
      --  unspecified
      Reserved_0_11        : HAL.UInt12 := 16#0#;
      --  reg_wdt_appcpu_reset_en.
      WDT_APPCPU_RESET_EN  : Boolean := False;
      --  reg_wdt_procpu_reset_en.
      WDT_PROCPU_RESET_EN  : Boolean := False;
      --  reg_wdt_flashboot_mod_en.
      WDT_FLASHBOOT_MOD_EN : Boolean := True;
      --  reg_wdt_sys_reset_length.
      WDT_SYS_RESET_LENGTH : WDTCONFIG0_WDT_SYS_RESET_LENGTH_Field := 16#1#;
      --  reg_wdt_cpu_reset_length.
      WDT_CPU_RESET_LENGTH : WDTCONFIG0_WDT_CPU_RESET_LENGTH_Field := 16#1#;
      --  reg_wdt_use_xtal.
      WDT_USE_XTAL         : Boolean := False;
      --  Write-only. reg_wdt_conf_update_en.
      WDT_CONF_UPDATE_EN   : Boolean := False;
      --  reg_wdt_stg3.
      WDT_STG3             : WDTCONFIG0_WDT_STG3_Field := 16#0#;
      --  reg_wdt_stg2.
      WDT_STG2             : WDTCONFIG0_WDT_STG2_Field := 16#0#;
      --  reg_wdt_stg1.
      WDT_STG1             : WDTCONFIG0_WDT_STG1_Field := 16#0#;
      --  reg_wdt_stg0.
      WDT_STG0             : WDTCONFIG0_WDT_STG0_Field := 16#0#;
      --  reg_wdt_en.
      WDT_EN               : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDTCONFIG0_Register use record
      Reserved_0_11        at 0 range 0 .. 11;
      WDT_APPCPU_RESET_EN  at 0 range 12 .. 12;
      WDT_PROCPU_RESET_EN  at 0 range 13 .. 13;
      WDT_FLASHBOOT_MOD_EN at 0 range 14 .. 14;
      WDT_SYS_RESET_LENGTH at 0 range 15 .. 17;
      WDT_CPU_RESET_LENGTH at 0 range 18 .. 20;
      WDT_USE_XTAL         at 0 range 21 .. 21;
      WDT_CONF_UPDATE_EN   at 0 range 22 .. 22;
      WDT_STG3             at 0 range 23 .. 24;
      WDT_STG2             at 0 range 25 .. 26;
      WDT_STG1             at 0 range 27 .. 28;
      WDT_STG0             at 0 range 29 .. 30;
      WDT_EN               at 0 range 31 .. 31;
   end record;

   subtype WDTCONFIG1_WDT_CLK_PRESCALE_Field is HAL.UInt16;

   --  TIMG_WDTCONFIG1_REG.
   type WDTCONFIG1_Register is record
      --  Write-only. reg_wdt_divcnt_rst.
      WDT_DIVCNT_RST   : Boolean := False;
      --  unspecified
      Reserved_1_15    : HAL.UInt15 := 16#0#;
      --  reg_wdt_clk_prescale.
      WDT_CLK_PRESCALE : WDTCONFIG1_WDT_CLK_PRESCALE_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDTCONFIG1_Register use record
      WDT_DIVCNT_RST   at 0 range 0 .. 0;
      Reserved_1_15    at 0 range 1 .. 15;
      WDT_CLK_PRESCALE at 0 range 16 .. 31;
   end record;

   subtype RTCCALICFG_RTC_CALI_CLK_SEL_Field is HAL.UInt2;
   subtype RTCCALICFG_RTC_CALI_MAX_Field is HAL.UInt15;

   --  TIMG_RTCCALICFG_REG.
   type RTCCALICFG_Register is record
      --  unspecified
      Reserved_0_11          : HAL.UInt12 := 16#0#;
      --  reg_rtc_cali_start_cycling.
      RTC_CALI_START_CYCLING : Boolean := True;
      --  reg_rtc_cali_clk_sel.0:rtcslowclock.1:clk_80m.2:xtal_32k
      RTC_CALI_CLK_SEL       : RTCCALICFG_RTC_CALI_CLK_SEL_Field := 16#1#;
      --  Read-only. rtc_cali_rdy
      RTC_CALI_RDY           : Boolean := False;
      --  reg_rtc_cali_max.
      RTC_CALI_MAX           : RTCCALICFG_RTC_CALI_MAX_Field := 16#1#;
      --  reg_rtc_cali_start.
      RTC_CALI_START         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTCCALICFG_Register use record
      Reserved_0_11          at 0 range 0 .. 11;
      RTC_CALI_START_CYCLING at 0 range 12 .. 12;
      RTC_CALI_CLK_SEL       at 0 range 13 .. 14;
      RTC_CALI_RDY           at 0 range 15 .. 15;
      RTC_CALI_MAX           at 0 range 16 .. 30;
      RTC_CALI_START         at 0 range 31 .. 31;
   end record;

   subtype RTCCALICFG1_RTC_CALI_VALUE_Field is HAL.UInt25;

   --  TIMG_RTCCALICFG1_REG.
   type RTCCALICFG1_Register is record
      --  Read-only. rtc_cali_cycling_data_vld
      RTC_CALI_CYCLING_DATA_VLD : Boolean;
      --  unspecified
      Reserved_1_6              : HAL.UInt6;
      --  Read-only. rtc_cali_value
      RTC_CALI_VALUE            : RTCCALICFG1_RTC_CALI_VALUE_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTCCALICFG1_Register use record
      RTC_CALI_CYCLING_DATA_VLD at 0 range 0 .. 0;
      Reserved_1_6              at 0 range 1 .. 6;
      RTC_CALI_VALUE            at 0 range 7 .. 31;
   end record;

   --  INT_ENA_TIMG_REG
   type INT_ENA_TIMERS_Register is record
      --  t0_int_ena
      T0_INT_ENA    : Boolean := False;
      --  wdt_int_ena
      WDT_INT_ENA   : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_TIMERS_Register use record
      T0_INT_ENA    at 0 range 0 .. 0;
      WDT_INT_ENA   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  INT_RAW_TIMG_REG
   type INT_RAW_TIMERS_Register is record
      --  Read-only. t0_int_raw
      T0_INT_RAW    : Boolean;
      --  Read-only. wdt_int_raw
      WDT_INT_RAW   : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_TIMERS_Register use record
      T0_INT_RAW    at 0 range 0 .. 0;
      WDT_INT_RAW   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  INT_ST_TIMG_REG
   type INT_ST_TIMERS_Register is record
      --  Read-only. t0_int_st
      T0_INT_ST     : Boolean;
      --  Read-only. wdt_int_st
      WDT_INT_ST    : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_TIMERS_Register use record
      T0_INT_ST     at 0 range 0 .. 0;
      WDT_INT_ST    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  INT_CLR_TIMG_REG
   type INT_CLR_TIMERS_Register is record
      --  Write-only. t0_int_clr
      T0_INT_CLR    : Boolean := False;
      --  Write-only. wdt_int_clr
      WDT_INT_CLR   : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_TIMERS_Register use record
      T0_INT_CLR    at 0 range 0 .. 0;
      WDT_INT_CLR   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype RTCCALICFG2_RTC_CALI_TIMEOUT_RST_CNT_Field is HAL.UInt4;
   subtype RTCCALICFG2_RTC_CALI_TIMEOUT_THRES_Field is HAL.UInt25;

   --  TIMG_RTCCALICFG2_REG.
   type RTCCALICFG2_Register is record
      --  Read-only. timeoutindicator
      RTC_CALI_TIMEOUT         : Boolean := False;
      --  unspecified
      Reserved_1_2             : HAL.UInt2 := 16#0#;
      --  reg_rtc_cali_timeout_rst_cnt.Cyclesthatreleasecalibrationtimeoutreset
      RTC_CALI_TIMEOUT_RST_CNT : RTCCALICFG2_RTC_CALI_TIMEOUT_RST_CNT_Field :=
                                  16#3#;
      --  reg_rtc_cali_timeout_thres.timeoutifcalivaluecountsoverthreshold
      RTC_CALI_TIMEOUT_THRES   : RTCCALICFG2_RTC_CALI_TIMEOUT_THRES_Field :=
                                  16#1FFFFFF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTCCALICFG2_Register use record
      RTC_CALI_TIMEOUT         at 0 range 0 .. 0;
      Reserved_1_2             at 0 range 1 .. 2;
      RTC_CALI_TIMEOUT_RST_CNT at 0 range 3 .. 6;
      RTC_CALI_TIMEOUT_THRES   at 0 range 7 .. 31;
   end record;

   subtype NTIMG_DATE_NTIMGS_DATE_Field is HAL.UInt28;

   --  TIMG_NTIMG_DATE_REG.
   type NTIMG_DATE_Register is record
      --  reg_ntimers_date.
      NTIMGS_DATE    : NTIMG_DATE_NTIMGS_DATE_Field := 16#2006191#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NTIMG_DATE_Register use record
      NTIMGS_DATE    at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  TIMG_REGCLK_REG.
   type REGCLK_Register is record
      --  unspecified
      Reserved_0_28       : HAL.UInt29 := 16#0#;
      --  reg_wdt_clk_is_active.
      WDT_CLK_IS_ACTIVE   : Boolean := True;
      --  reg_timer_clk_is_active.
      TIMER_CLK_IS_ACTIVE : Boolean := True;
      --  reg_clk_en.
      CLK_EN              : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGCLK_Register use record
      Reserved_0_28       at 0 range 0 .. 28;
      WDT_CLK_IS_ACTIVE   at 0 range 29 .. 29;
      TIMER_CLK_IS_ACTIVE at 0 range 30 .. 30;
      CLK_EN              at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Timer Group
   type TIMG_Peripheral is record
      --  TIMG_T0CONFIG_REG.
      T0CONFIG       : aliased T0CONFIG_Register;
      --  TIMG_T0LO_REG.
      T0LO           : aliased HAL.UInt32;
      --  TIMG_T0HI_REG.
      T0HI           : aliased T0HI_Register;
      --  TIMG_T0UPDATE_REG.
      T0UPDATE       : aliased T0UPDATE_Register;
      --  TIMG_T0ALARMLO_REG.
      T0ALARMLO      : aliased HAL.UInt32;
      --  TIMG_T0ALARMHI_REG.
      T0ALARMHI      : aliased T0ALARMHI_Register;
      --  TIMG_T0LOADLO_REG.
      T0LOADLO       : aliased HAL.UInt32;
      --  TIMG_T0LOADHI_REG.
      T0LOADHI       : aliased T0LOADHI_Register;
      --  TIMG_T0LOAD_REG.
      T0LOAD         : aliased HAL.UInt32;
      --  TIMG_WDTCONFIG0_REG.
      WDTCONFIG0     : aliased WDTCONFIG0_Register;
      --  TIMG_WDTCONFIG1_REG.
      WDTCONFIG1     : aliased WDTCONFIG1_Register;
      --  TIMG_WDTCONFIG2_REG.
      WDTCONFIG2     : aliased HAL.UInt32;
      --  TIMG_WDTCONFIG3_REG.
      WDTCONFIG3     : aliased HAL.UInt32;
      --  TIMG_WDTCONFIG4_REG.
      WDTCONFIG4     : aliased HAL.UInt32;
      --  TIMG_WDTCONFIG5_REG.
      WDTCONFIG5     : aliased HAL.UInt32;
      --  TIMG_WDTFEED_REG.
      WDTFEED        : aliased HAL.UInt32;
      --  TIMG_WDTWPROTECT_REG.
      WDTWPROTECT    : aliased HAL.UInt32;
      --  TIMG_RTCCALICFG_REG.
      RTCCALICFG     : aliased RTCCALICFG_Register;
      --  TIMG_RTCCALICFG1_REG.
      RTCCALICFG1    : aliased RTCCALICFG1_Register;
      --  INT_ENA_TIMG_REG
      INT_ENA_TIMERS : aliased INT_ENA_TIMERS_Register;
      --  INT_RAW_TIMG_REG
      INT_RAW_TIMERS : aliased INT_RAW_TIMERS_Register;
      --  INT_ST_TIMG_REG
      INT_ST_TIMERS  : aliased INT_ST_TIMERS_Register;
      --  INT_CLR_TIMG_REG
      INT_CLR_TIMERS : aliased INT_CLR_TIMERS_Register;
      --  TIMG_RTCCALICFG2_REG.
      RTCCALICFG2    : aliased RTCCALICFG2_Register;
      --  TIMG_NTIMG_DATE_REG.
      NTIMG_DATE     : aliased NTIMG_DATE_Register;
      --  TIMG_REGCLK_REG.
      REGCLK         : aliased REGCLK_Register;
   end record
     with Volatile;

   for TIMG_Peripheral use record
      T0CONFIG       at 16#0# range 0 .. 31;
      T0LO           at 16#4# range 0 .. 31;
      T0HI           at 16#8# range 0 .. 31;
      T0UPDATE       at 16#C# range 0 .. 31;
      T0ALARMLO      at 16#10# range 0 .. 31;
      T0ALARMHI      at 16#14# range 0 .. 31;
      T0LOADLO       at 16#18# range 0 .. 31;
      T0LOADHI       at 16#1C# range 0 .. 31;
      T0LOAD         at 16#20# range 0 .. 31;
      WDTCONFIG0     at 16#48# range 0 .. 31;
      WDTCONFIG1     at 16#4C# range 0 .. 31;
      WDTCONFIG2     at 16#50# range 0 .. 31;
      WDTCONFIG3     at 16#54# range 0 .. 31;
      WDTCONFIG4     at 16#58# range 0 .. 31;
      WDTCONFIG5     at 16#5C# range 0 .. 31;
      WDTFEED        at 16#60# range 0 .. 31;
      WDTWPROTECT    at 16#64# range 0 .. 31;
      RTCCALICFG     at 16#68# range 0 .. 31;
      RTCCALICFG1    at 16#6C# range 0 .. 31;
      INT_ENA_TIMERS at 16#70# range 0 .. 31;
      INT_RAW_TIMERS at 16#74# range 0 .. 31;
      INT_ST_TIMERS  at 16#78# range 0 .. 31;
      INT_CLR_TIMERS at 16#7C# range 0 .. 31;
      RTCCALICFG2    at 16#80# range 0 .. 31;
      NTIMG_DATE     at 16#F8# range 0 .. 31;
      REGCLK         at 16#FC# range 0 .. 31;
   end record;

   --  Timer Group
   TIMG0_Periph : aliased TIMG_Peripheral
     with Import, Address => TIMG0_Base;

   --  Timer Group
   TIMG1_Periph : aliased TIMG_Peripheral
     with Import, Address => TIMG1_Base;

end ESP32C3.TIMG;
