pragma Style_Checks (Off);

--  Copyright 2022 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c3.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32C3.LEDC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype LSCH0_CONF0_TIMER_SEL_LSCH0_Field is HAL.UInt2;
   subtype LSCH0_CONF0_OVF_NUM_LSCH0_Field is HAL.UInt10;

   --  LEDC_LSCH0_CONF0.
   type LSCH0_CONF0_Register is record
      --  reg_timer_sel_lsch0.
      TIMER_SEL_LSCH0     : LSCH0_CONF0_TIMER_SEL_LSCH0_Field := 16#0#;
      --  reg_sig_out_en_lsch0.
      SIG_OUT_EN_LSCH0    : Boolean := False;
      --  reg_idle_lv_lsch0.
      IDLE_LV_LSCH0       : Boolean := False;
      --  Write-only. reg_para_up_lsch0.
      PARA_UP_LSCH0       : Boolean := False;
      --  reg_ovf_num_lsch0.
      OVF_NUM_LSCH0       : LSCH0_CONF0_OVF_NUM_LSCH0_Field := 16#0#;
      --  reg_ovf_cnt_en_lsch0.
      OVF_CNT_EN_LSCH0    : Boolean := False;
      --  Write-only. reg_ovf_cnt_reset_lsch0.
      OVF_CNT_RESET_LSCH0 : Boolean := False;
      --  unspecified
      Reserved_17_31      : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH0_CONF0_Register use record
      TIMER_SEL_LSCH0     at 0 range 0 .. 1;
      SIG_OUT_EN_LSCH0    at 0 range 2 .. 2;
      IDLE_LV_LSCH0       at 0 range 3 .. 3;
      PARA_UP_LSCH0       at 0 range 4 .. 4;
      OVF_NUM_LSCH0       at 0 range 5 .. 14;
      OVF_CNT_EN_LSCH0    at 0 range 15 .. 15;
      OVF_CNT_RESET_LSCH0 at 0 range 16 .. 16;
      Reserved_17_31      at 0 range 17 .. 31;
   end record;

   subtype LSCH0_HPOINT_HPOINT_LSCH0_Field is HAL.UInt14;

   --  LEDC_LSCH0_HPOINT.
   type LSCH0_HPOINT_Register is record
      --  reg_hpoint_lsch0.
      HPOINT_LSCH0   : LSCH0_HPOINT_HPOINT_LSCH0_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH0_HPOINT_Register use record
      HPOINT_LSCH0   at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype LSCH0_DUTY_DUTY_LSCH0_Field is HAL.UInt19;

   --  LEDC_LSCH0_DUTY.
   type LSCH0_DUTY_Register is record
      --  reg_duty_lsch0.
      DUTY_LSCH0     : LSCH0_DUTY_DUTY_LSCH0_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH0_DUTY_Register use record
      DUTY_LSCH0     at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LSCH0_CONF1_DUTY_SCALE_LSCH0_Field is HAL.UInt10;
   subtype LSCH0_CONF1_DUTY_CYCLE_LSCH0_Field is HAL.UInt10;
   subtype LSCH0_CONF1_DUTY_NUM_LSCH0_Field is HAL.UInt10;

   --  LEDC_LSCH0_CONF1.
   type LSCH0_CONF1_Register is record
      --  reg_duty_scale_lsch0.
      DUTY_SCALE_LSCH0 : LSCH0_CONF1_DUTY_SCALE_LSCH0_Field := 16#0#;
      --  reg_duty_cycle_lsch0.
      DUTY_CYCLE_LSCH0 : LSCH0_CONF1_DUTY_CYCLE_LSCH0_Field := 16#0#;
      --  reg_duty_num_lsch0.
      DUTY_NUM_LSCH0   : LSCH0_CONF1_DUTY_NUM_LSCH0_Field := 16#0#;
      --  reg_duty_inc_lsch0.
      DUTY_INC_LSCH0   : Boolean := True;
      --  reg_duty_start_lsch0.
      DUTY_START_LSCH0 : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH0_CONF1_Register use record
      DUTY_SCALE_LSCH0 at 0 range 0 .. 9;
      DUTY_CYCLE_LSCH0 at 0 range 10 .. 19;
      DUTY_NUM_LSCH0   at 0 range 20 .. 29;
      DUTY_INC_LSCH0   at 0 range 30 .. 30;
      DUTY_START_LSCH0 at 0 range 31 .. 31;
   end record;

   subtype LSCH0_DUTY_R_DUTY_LSCH0_R_Field is HAL.UInt19;

   --  LEDC_LSCH0_DUTY_R.
   type LSCH0_DUTY_R_Register is record
      --  Read-only. reg_duty_lsch0_r.
      DUTY_LSCH0_R   : LSCH0_DUTY_R_DUTY_LSCH0_R_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH0_DUTY_R_Register use record
      DUTY_LSCH0_R   at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LSCH1_CONF0_TIMER_SEL_LSCH1_Field is HAL.UInt2;
   subtype LSCH1_CONF0_OVF_NUM_LSCH1_Field is HAL.UInt10;

   --  LEDC_LSCH1_CONF0.
   type LSCH1_CONF0_Register is record
      --  reg_timer_sel_lsch1.
      TIMER_SEL_LSCH1     : LSCH1_CONF0_TIMER_SEL_LSCH1_Field := 16#0#;
      --  reg_sig_out_en_lsch1.
      SIG_OUT_EN_LSCH1    : Boolean := False;
      --  reg_idle_lv_lsch1.
      IDLE_LV_LSCH1       : Boolean := False;
      --  Write-only. reg_para_up_lsch1.
      PARA_UP_LSCH1       : Boolean := False;
      --  reg_ovf_num_lsch1.
      OVF_NUM_LSCH1       : LSCH1_CONF0_OVF_NUM_LSCH1_Field := 16#0#;
      --  reg_ovf_cnt_en_lsch1.
      OVF_CNT_EN_LSCH1    : Boolean := False;
      --  Write-only. reg_ovf_cnt_reset_lsch1.
      OVF_CNT_RESET_LSCH1 : Boolean := False;
      --  unspecified
      Reserved_17_31      : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH1_CONF0_Register use record
      TIMER_SEL_LSCH1     at 0 range 0 .. 1;
      SIG_OUT_EN_LSCH1    at 0 range 2 .. 2;
      IDLE_LV_LSCH1       at 0 range 3 .. 3;
      PARA_UP_LSCH1       at 0 range 4 .. 4;
      OVF_NUM_LSCH1       at 0 range 5 .. 14;
      OVF_CNT_EN_LSCH1    at 0 range 15 .. 15;
      OVF_CNT_RESET_LSCH1 at 0 range 16 .. 16;
      Reserved_17_31      at 0 range 17 .. 31;
   end record;

   subtype LSCH1_HPOINT_HPOINT_LSCH1_Field is HAL.UInt14;

   --  LEDC_LSCH1_HPOINT.
   type LSCH1_HPOINT_Register is record
      --  reg_hpoint_lsch1.
      HPOINT_LSCH1   : LSCH1_HPOINT_HPOINT_LSCH1_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH1_HPOINT_Register use record
      HPOINT_LSCH1   at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype LSCH1_DUTY_DUTY_LSCH1_Field is HAL.UInt19;

   --  LEDC_LSCH1_DUTY.
   type LSCH1_DUTY_Register is record
      --  reg_duty_lsch1.
      DUTY_LSCH1     : LSCH1_DUTY_DUTY_LSCH1_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH1_DUTY_Register use record
      DUTY_LSCH1     at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LSCH1_CONF1_DUTY_SCALE_LSCH1_Field is HAL.UInt10;
   subtype LSCH1_CONF1_DUTY_CYCLE_LSCH1_Field is HAL.UInt10;
   subtype LSCH1_CONF1_DUTY_NUM_LSCH1_Field is HAL.UInt10;

   --  LEDC_LSCH1_CONF1.
   type LSCH1_CONF1_Register is record
      --  reg_duty_scale_lsch1.
      DUTY_SCALE_LSCH1 : LSCH1_CONF1_DUTY_SCALE_LSCH1_Field := 16#0#;
      --  reg_duty_cycle_lsch1.
      DUTY_CYCLE_LSCH1 : LSCH1_CONF1_DUTY_CYCLE_LSCH1_Field := 16#0#;
      --  reg_duty_num_lsch1.
      DUTY_NUM_LSCH1   : LSCH1_CONF1_DUTY_NUM_LSCH1_Field := 16#0#;
      --  reg_duty_inc_lsch1.
      DUTY_INC_LSCH1   : Boolean := True;
      --  reg_duty_start_lsch1.
      DUTY_START_LSCH1 : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH1_CONF1_Register use record
      DUTY_SCALE_LSCH1 at 0 range 0 .. 9;
      DUTY_CYCLE_LSCH1 at 0 range 10 .. 19;
      DUTY_NUM_LSCH1   at 0 range 20 .. 29;
      DUTY_INC_LSCH1   at 0 range 30 .. 30;
      DUTY_START_LSCH1 at 0 range 31 .. 31;
   end record;

   subtype LSCH1_DUTY_R_DUTY_LSCH1_R_Field is HAL.UInt19;

   --  LEDC_LSCH1_DUTY_R.
   type LSCH1_DUTY_R_Register is record
      --  Read-only. reg_duty_lsch1_r.
      DUTY_LSCH1_R   : LSCH1_DUTY_R_DUTY_LSCH1_R_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH1_DUTY_R_Register use record
      DUTY_LSCH1_R   at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LSCH2_CONF0_TIMER_SEL_LSCH2_Field is HAL.UInt2;
   subtype LSCH2_CONF0_OVF_NUM_LSCH2_Field is HAL.UInt10;

   --  LEDC_LSCH2_CONF0.
   type LSCH2_CONF0_Register is record
      --  reg_timer_sel_lsch2.
      TIMER_SEL_LSCH2     : LSCH2_CONF0_TIMER_SEL_LSCH2_Field := 16#0#;
      --  reg_sig_out_en_lsch2.
      SIG_OUT_EN_LSCH2    : Boolean := False;
      --  reg_idle_lv_lsch2.
      IDLE_LV_LSCH2       : Boolean := False;
      --  Write-only. reg_para_up_lsch2.
      PARA_UP_LSCH2       : Boolean := False;
      --  reg_ovf_num_lsch2.
      OVF_NUM_LSCH2       : LSCH2_CONF0_OVF_NUM_LSCH2_Field := 16#0#;
      --  reg_ovf_cnt_en_lsch2.
      OVF_CNT_EN_LSCH2    : Boolean := False;
      --  Write-only. reg_ovf_cnt_reset_lsch2.
      OVF_CNT_RESET_LSCH2 : Boolean := False;
      --  unspecified
      Reserved_17_31      : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH2_CONF0_Register use record
      TIMER_SEL_LSCH2     at 0 range 0 .. 1;
      SIG_OUT_EN_LSCH2    at 0 range 2 .. 2;
      IDLE_LV_LSCH2       at 0 range 3 .. 3;
      PARA_UP_LSCH2       at 0 range 4 .. 4;
      OVF_NUM_LSCH2       at 0 range 5 .. 14;
      OVF_CNT_EN_LSCH2    at 0 range 15 .. 15;
      OVF_CNT_RESET_LSCH2 at 0 range 16 .. 16;
      Reserved_17_31      at 0 range 17 .. 31;
   end record;

   subtype LSCH2_HPOINT_HPOINT_LSCH2_Field is HAL.UInt14;

   --  LEDC_LSCH2_HPOINT.
   type LSCH2_HPOINT_Register is record
      --  reg_hpoint_lsch2.
      HPOINT_LSCH2   : LSCH2_HPOINT_HPOINT_LSCH2_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH2_HPOINT_Register use record
      HPOINT_LSCH2   at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype LSCH2_DUTY_DUTY_LSCH2_Field is HAL.UInt19;

   --  LEDC_LSCH2_DUTY.
   type LSCH2_DUTY_Register is record
      --  reg_duty_lsch2.
      DUTY_LSCH2     : LSCH2_DUTY_DUTY_LSCH2_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH2_DUTY_Register use record
      DUTY_LSCH2     at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LSCH2_CONF1_DUTY_SCALE_LSCH2_Field is HAL.UInt10;
   subtype LSCH2_CONF1_DUTY_CYCLE_LSCH2_Field is HAL.UInt10;
   subtype LSCH2_CONF1_DUTY_NUM_LSCH2_Field is HAL.UInt10;

   --  LEDC_LSCH2_CONF1.
   type LSCH2_CONF1_Register is record
      --  reg_duty_scale_lsch2.
      DUTY_SCALE_LSCH2 : LSCH2_CONF1_DUTY_SCALE_LSCH2_Field := 16#0#;
      --  reg_duty_cycle_lsch2.
      DUTY_CYCLE_LSCH2 : LSCH2_CONF1_DUTY_CYCLE_LSCH2_Field := 16#0#;
      --  reg_duty_num_lsch2.
      DUTY_NUM_LSCH2   : LSCH2_CONF1_DUTY_NUM_LSCH2_Field := 16#0#;
      --  reg_duty_inc_lsch2.
      DUTY_INC_LSCH2   : Boolean := True;
      --  reg_duty_start_lsch2.
      DUTY_START_LSCH2 : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH2_CONF1_Register use record
      DUTY_SCALE_LSCH2 at 0 range 0 .. 9;
      DUTY_CYCLE_LSCH2 at 0 range 10 .. 19;
      DUTY_NUM_LSCH2   at 0 range 20 .. 29;
      DUTY_INC_LSCH2   at 0 range 30 .. 30;
      DUTY_START_LSCH2 at 0 range 31 .. 31;
   end record;

   subtype LSCH2_DUTY_R_DUTY_LSCH2_R_Field is HAL.UInt19;

   --  LEDC_LSCH2_DUTY_R.
   type LSCH2_DUTY_R_Register is record
      --  Read-only. reg_duty_lsch2_r.
      DUTY_LSCH2_R   : LSCH2_DUTY_R_DUTY_LSCH2_R_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH2_DUTY_R_Register use record
      DUTY_LSCH2_R   at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LSCH3_CONF0_TIMER_SEL_LSCH3_Field is HAL.UInt2;
   subtype LSCH3_CONF0_OVF_NUM_LSCH3_Field is HAL.UInt10;

   --  LEDC_LSCH3_CONF0.
   type LSCH3_CONF0_Register is record
      --  reg_timer_sel_lsch3.
      TIMER_SEL_LSCH3     : LSCH3_CONF0_TIMER_SEL_LSCH3_Field := 16#0#;
      --  reg_sig_out_en_lsch3.
      SIG_OUT_EN_LSCH3    : Boolean := False;
      --  reg_idle_lv_lsch3.
      IDLE_LV_LSCH3       : Boolean := False;
      --  Write-only. reg_para_up_lsch3.
      PARA_UP_LSCH3       : Boolean := False;
      --  reg_ovf_num_lsch3.
      OVF_NUM_LSCH3       : LSCH3_CONF0_OVF_NUM_LSCH3_Field := 16#0#;
      --  reg_ovf_cnt_en_lsch3.
      OVF_CNT_EN_LSCH3    : Boolean := False;
      --  Write-only. reg_ovf_cnt_reset_lsch3.
      OVF_CNT_RESET_LSCH3 : Boolean := False;
      --  unspecified
      Reserved_17_31      : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH3_CONF0_Register use record
      TIMER_SEL_LSCH3     at 0 range 0 .. 1;
      SIG_OUT_EN_LSCH3    at 0 range 2 .. 2;
      IDLE_LV_LSCH3       at 0 range 3 .. 3;
      PARA_UP_LSCH3       at 0 range 4 .. 4;
      OVF_NUM_LSCH3       at 0 range 5 .. 14;
      OVF_CNT_EN_LSCH3    at 0 range 15 .. 15;
      OVF_CNT_RESET_LSCH3 at 0 range 16 .. 16;
      Reserved_17_31      at 0 range 17 .. 31;
   end record;

   subtype LSCH3_HPOINT_HPOINT_LSCH3_Field is HAL.UInt14;

   --  LEDC_LSCH3_HPOINT.
   type LSCH3_HPOINT_Register is record
      --  reg_hpoint_lsch3.
      HPOINT_LSCH3   : LSCH3_HPOINT_HPOINT_LSCH3_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH3_HPOINT_Register use record
      HPOINT_LSCH3   at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype LSCH3_DUTY_DUTY_LSCH3_Field is HAL.UInt19;

   --  LEDC_LSCH3_DUTY.
   type LSCH3_DUTY_Register is record
      --  reg_duty_lsch3.
      DUTY_LSCH3     : LSCH3_DUTY_DUTY_LSCH3_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH3_DUTY_Register use record
      DUTY_LSCH3     at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LSCH3_CONF1_DUTY_SCALE_LSCH3_Field is HAL.UInt10;
   subtype LSCH3_CONF1_DUTY_CYCLE_LSCH3_Field is HAL.UInt10;
   subtype LSCH3_CONF1_DUTY_NUM_LSCH3_Field is HAL.UInt10;

   --  LEDC_LSCH3_CONF1.
   type LSCH3_CONF1_Register is record
      --  reg_duty_scale_lsch3.
      DUTY_SCALE_LSCH3 : LSCH3_CONF1_DUTY_SCALE_LSCH3_Field := 16#0#;
      --  reg_duty_cycle_lsch3.
      DUTY_CYCLE_LSCH3 : LSCH3_CONF1_DUTY_CYCLE_LSCH3_Field := 16#0#;
      --  reg_duty_num_lsch3.
      DUTY_NUM_LSCH3   : LSCH3_CONF1_DUTY_NUM_LSCH3_Field := 16#0#;
      --  reg_duty_inc_lsch3.
      DUTY_INC_LSCH3   : Boolean := True;
      --  reg_duty_start_lsch3.
      DUTY_START_LSCH3 : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH3_CONF1_Register use record
      DUTY_SCALE_LSCH3 at 0 range 0 .. 9;
      DUTY_CYCLE_LSCH3 at 0 range 10 .. 19;
      DUTY_NUM_LSCH3   at 0 range 20 .. 29;
      DUTY_INC_LSCH3   at 0 range 30 .. 30;
      DUTY_START_LSCH3 at 0 range 31 .. 31;
   end record;

   subtype LSCH3_DUTY_R_DUTY_LSCH3_R_Field is HAL.UInt19;

   --  LEDC_LSCH3_DUTY_R.
   type LSCH3_DUTY_R_Register is record
      --  Read-only. reg_duty_lsch3_r.
      DUTY_LSCH3_R   : LSCH3_DUTY_R_DUTY_LSCH3_R_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH3_DUTY_R_Register use record
      DUTY_LSCH3_R   at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LSCH4_CONF0_TIMER_SEL_LSCH4_Field is HAL.UInt2;
   subtype LSCH4_CONF0_OVF_NUM_LSCH4_Field is HAL.UInt10;

   --  LEDC_LSCH4_CONF0.
   type LSCH4_CONF0_Register is record
      --  reg_timer_sel_lsch4.
      TIMER_SEL_LSCH4     : LSCH4_CONF0_TIMER_SEL_LSCH4_Field := 16#0#;
      --  reg_sig_out_en_lsch4.
      SIG_OUT_EN_LSCH4    : Boolean := False;
      --  reg_idle_lv_lsch4.
      IDLE_LV_LSCH4       : Boolean := False;
      --  Write-only. reg_para_up_lsch4.
      PARA_UP_LSCH4       : Boolean := False;
      --  reg_ovf_num_lsch4.
      OVF_NUM_LSCH4       : LSCH4_CONF0_OVF_NUM_LSCH4_Field := 16#0#;
      --  reg_ovf_cnt_en_lsch4.
      OVF_CNT_EN_LSCH4    : Boolean := False;
      --  Write-only. reg_ovf_cnt_reset_lsch4.
      OVF_CNT_RESET_LSCH4 : Boolean := False;
      --  unspecified
      Reserved_17_31      : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH4_CONF0_Register use record
      TIMER_SEL_LSCH4     at 0 range 0 .. 1;
      SIG_OUT_EN_LSCH4    at 0 range 2 .. 2;
      IDLE_LV_LSCH4       at 0 range 3 .. 3;
      PARA_UP_LSCH4       at 0 range 4 .. 4;
      OVF_NUM_LSCH4       at 0 range 5 .. 14;
      OVF_CNT_EN_LSCH4    at 0 range 15 .. 15;
      OVF_CNT_RESET_LSCH4 at 0 range 16 .. 16;
      Reserved_17_31      at 0 range 17 .. 31;
   end record;

   subtype LSCH4_HPOINT_HPOINT_LSCH4_Field is HAL.UInt14;

   --  LEDC_LSCH4_HPOINT.
   type LSCH4_HPOINT_Register is record
      --  reg_hpoint_lsch4.
      HPOINT_LSCH4   : LSCH4_HPOINT_HPOINT_LSCH4_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH4_HPOINT_Register use record
      HPOINT_LSCH4   at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype LSCH4_DUTY_DUTY_LSCH4_Field is HAL.UInt19;

   --  LEDC_LSCH4_DUTY.
   type LSCH4_DUTY_Register is record
      --  reg_duty_lsch4.
      DUTY_LSCH4     : LSCH4_DUTY_DUTY_LSCH4_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH4_DUTY_Register use record
      DUTY_LSCH4     at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LSCH4_CONF1_DUTY_SCALE_LSCH4_Field is HAL.UInt10;
   subtype LSCH4_CONF1_DUTY_CYCLE_LSCH4_Field is HAL.UInt10;
   subtype LSCH4_CONF1_DUTY_NUM_LSCH4_Field is HAL.UInt10;

   --  LEDC_LSCH4_CONF1.
   type LSCH4_CONF1_Register is record
      --  reg_duty_scale_lsch4.
      DUTY_SCALE_LSCH4 : LSCH4_CONF1_DUTY_SCALE_LSCH4_Field := 16#0#;
      --  reg_duty_cycle_lsch4.
      DUTY_CYCLE_LSCH4 : LSCH4_CONF1_DUTY_CYCLE_LSCH4_Field := 16#0#;
      --  reg_duty_num_lsch4.
      DUTY_NUM_LSCH4   : LSCH4_CONF1_DUTY_NUM_LSCH4_Field := 16#0#;
      --  reg_duty_inc_lsch4.
      DUTY_INC_LSCH4   : Boolean := True;
      --  reg_duty_start_lsch4.
      DUTY_START_LSCH4 : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH4_CONF1_Register use record
      DUTY_SCALE_LSCH4 at 0 range 0 .. 9;
      DUTY_CYCLE_LSCH4 at 0 range 10 .. 19;
      DUTY_NUM_LSCH4   at 0 range 20 .. 29;
      DUTY_INC_LSCH4   at 0 range 30 .. 30;
      DUTY_START_LSCH4 at 0 range 31 .. 31;
   end record;

   subtype LSCH4_DUTY_R_DUTY_LSCH4_R_Field is HAL.UInt19;

   --  LEDC_LSCH4_DUTY_R.
   type LSCH4_DUTY_R_Register is record
      --  Read-only. reg_duty_lsch4_r.
      DUTY_LSCH4_R   : LSCH4_DUTY_R_DUTY_LSCH4_R_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH4_DUTY_R_Register use record
      DUTY_LSCH4_R   at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LSCH5_CONF0_TIMER_SEL_LSCH5_Field is HAL.UInt2;
   subtype LSCH5_CONF0_OVF_NUM_LSCH5_Field is HAL.UInt10;

   --  LEDC_LSCH5_CONF0.
   type LSCH5_CONF0_Register is record
      --  reg_timer_sel_lsch5.
      TIMER_SEL_LSCH5     : LSCH5_CONF0_TIMER_SEL_LSCH5_Field := 16#0#;
      --  reg_sig_out_en_lsch5.
      SIG_OUT_EN_LSCH5    : Boolean := False;
      --  reg_idle_lv_lsch5.
      IDLE_LV_LSCH5       : Boolean := False;
      --  Write-only. reg_para_up_lsch5.
      PARA_UP_LSCH5       : Boolean := False;
      --  reg_ovf_num_lsch5.
      OVF_NUM_LSCH5       : LSCH5_CONF0_OVF_NUM_LSCH5_Field := 16#0#;
      --  reg_ovf_cnt_en_lsch5.
      OVF_CNT_EN_LSCH5    : Boolean := False;
      --  Write-only. reg_ovf_cnt_reset_lsch5.
      OVF_CNT_RESET_LSCH5 : Boolean := False;
      --  unspecified
      Reserved_17_31      : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH5_CONF0_Register use record
      TIMER_SEL_LSCH5     at 0 range 0 .. 1;
      SIG_OUT_EN_LSCH5    at 0 range 2 .. 2;
      IDLE_LV_LSCH5       at 0 range 3 .. 3;
      PARA_UP_LSCH5       at 0 range 4 .. 4;
      OVF_NUM_LSCH5       at 0 range 5 .. 14;
      OVF_CNT_EN_LSCH5    at 0 range 15 .. 15;
      OVF_CNT_RESET_LSCH5 at 0 range 16 .. 16;
      Reserved_17_31      at 0 range 17 .. 31;
   end record;

   subtype LSCH5_HPOINT_HPOINT_LSCH5_Field is HAL.UInt14;

   --  LEDC_LSCH5_HPOINT.
   type LSCH5_HPOINT_Register is record
      --  reg_hpoint_lsch5.
      HPOINT_LSCH5   : LSCH5_HPOINT_HPOINT_LSCH5_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH5_HPOINT_Register use record
      HPOINT_LSCH5   at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype LSCH5_DUTY_DUTY_LSCH5_Field is HAL.UInt19;

   --  LEDC_LSCH5_DUTY.
   type LSCH5_DUTY_Register is record
      --  reg_duty_lsch5.
      DUTY_LSCH5     : LSCH5_DUTY_DUTY_LSCH5_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH5_DUTY_Register use record
      DUTY_LSCH5     at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LSCH5_CONF1_DUTY_SCALE_LSCH5_Field is HAL.UInt10;
   subtype LSCH5_CONF1_DUTY_CYCLE_LSCH5_Field is HAL.UInt10;
   subtype LSCH5_CONF1_DUTY_NUM_LSCH5_Field is HAL.UInt10;

   --  LEDC_LSCH5_CONF1.
   type LSCH5_CONF1_Register is record
      --  reg_duty_scale_lsch5.
      DUTY_SCALE_LSCH5 : LSCH5_CONF1_DUTY_SCALE_LSCH5_Field := 16#0#;
      --  reg_duty_cycle_lsch5.
      DUTY_CYCLE_LSCH5 : LSCH5_CONF1_DUTY_CYCLE_LSCH5_Field := 16#0#;
      --  reg_duty_num_lsch5.
      DUTY_NUM_LSCH5   : LSCH5_CONF1_DUTY_NUM_LSCH5_Field := 16#0#;
      --  reg_duty_inc_lsch5.
      DUTY_INC_LSCH5   : Boolean := True;
      --  reg_duty_start_lsch5.
      DUTY_START_LSCH5 : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH5_CONF1_Register use record
      DUTY_SCALE_LSCH5 at 0 range 0 .. 9;
      DUTY_CYCLE_LSCH5 at 0 range 10 .. 19;
      DUTY_NUM_LSCH5   at 0 range 20 .. 29;
      DUTY_INC_LSCH5   at 0 range 30 .. 30;
      DUTY_START_LSCH5 at 0 range 31 .. 31;
   end record;

   subtype LSCH5_DUTY_R_DUTY_LSCH5_R_Field is HAL.UInt19;

   --  LEDC_LSCH5_DUTY_R.
   type LSCH5_DUTY_R_Register is record
      --  Read-only. reg_duty_lsch5_r.
      DUTY_LSCH5_R   : LSCH5_DUTY_R_DUTY_LSCH5_R_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSCH5_DUTY_R_Register use record
      DUTY_LSCH5_R   at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LSTIMER0_CONF_LSTIMER0_DUTY_RES_Field is HAL.UInt4;
   subtype LSTIMER0_CONF_CLK_DIV_LSTIMER0_Field is HAL.UInt18;

   --  LEDC_LSTIMER0_CONF.
   type LSTIMER0_CONF_Register is record
      --  reg_lstimer0_duty_res.
      LSTIMER0_DUTY_RES : LSTIMER0_CONF_LSTIMER0_DUTY_RES_Field := 16#0#;
      --  reg_clk_div_lstimer0.
      CLK_DIV_LSTIMER0  : LSTIMER0_CONF_CLK_DIV_LSTIMER0_Field := 16#0#;
      --  reg_lstimer0_pause.
      LSTIMER0_PAUSE    : Boolean := False;
      --  reg_lstimer0_rst.
      LSTIMER0_RST      : Boolean := True;
      --  reg_tick_sel_lstimer0.
      TICK_SEL_LSTIMER0 : Boolean := False;
      --  Write-only. reg_lstimer0_para_up.
      LSTIMER0_PARA_UP  : Boolean := False;
      --  unspecified
      Reserved_26_31    : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSTIMER0_CONF_Register use record
      LSTIMER0_DUTY_RES at 0 range 0 .. 3;
      CLK_DIV_LSTIMER0  at 0 range 4 .. 21;
      LSTIMER0_PAUSE    at 0 range 22 .. 22;
      LSTIMER0_RST      at 0 range 23 .. 23;
      TICK_SEL_LSTIMER0 at 0 range 24 .. 24;
      LSTIMER0_PARA_UP  at 0 range 25 .. 25;
      Reserved_26_31    at 0 range 26 .. 31;
   end record;

   subtype LSTIMER0_VALUE_LSTIMER0_CNT_Field is HAL.UInt14;

   --  LEDC_LSTIMER0_VALUE.
   type LSTIMER0_VALUE_Register is record
      --  Read-only. reg_lstimer0_cnt.
      LSTIMER0_CNT   : LSTIMER0_VALUE_LSTIMER0_CNT_Field;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSTIMER0_VALUE_Register use record
      LSTIMER0_CNT   at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype LSTIMER1_CONF_LSTIMER1_DUTY_RES_Field is HAL.UInt4;
   subtype LSTIMER1_CONF_CLK_DIV_LSTIMER1_Field is HAL.UInt18;

   --  LEDC_LSTIMER1_CONF.
   type LSTIMER1_CONF_Register is record
      --  reg_lstimer1_duty_res.
      LSTIMER1_DUTY_RES : LSTIMER1_CONF_LSTIMER1_DUTY_RES_Field := 16#0#;
      --  reg_clk_div_lstimer1.
      CLK_DIV_LSTIMER1  : LSTIMER1_CONF_CLK_DIV_LSTIMER1_Field := 16#0#;
      --  reg_lstimer1_pause.
      LSTIMER1_PAUSE    : Boolean := False;
      --  reg_lstimer1_rst.
      LSTIMER1_RST      : Boolean := True;
      --  reg_tick_sel_lstimer1.
      TICK_SEL_LSTIMER1 : Boolean := False;
      --  Write-only. reg_lstimer1_para_up.
      LSTIMER1_PARA_UP  : Boolean := False;
      --  unspecified
      Reserved_26_31    : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSTIMER1_CONF_Register use record
      LSTIMER1_DUTY_RES at 0 range 0 .. 3;
      CLK_DIV_LSTIMER1  at 0 range 4 .. 21;
      LSTIMER1_PAUSE    at 0 range 22 .. 22;
      LSTIMER1_RST      at 0 range 23 .. 23;
      TICK_SEL_LSTIMER1 at 0 range 24 .. 24;
      LSTIMER1_PARA_UP  at 0 range 25 .. 25;
      Reserved_26_31    at 0 range 26 .. 31;
   end record;

   subtype LSTIMER1_VALUE_LSTIMER1_CNT_Field is HAL.UInt14;

   --  LEDC_LSTIMER1_VALUE.
   type LSTIMER1_VALUE_Register is record
      --  Read-only. reg_lstimer1_cnt.
      LSTIMER1_CNT   : LSTIMER1_VALUE_LSTIMER1_CNT_Field;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSTIMER1_VALUE_Register use record
      LSTIMER1_CNT   at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype LSTIMER2_CONF_LSTIMER2_DUTY_RES_Field is HAL.UInt4;
   subtype LSTIMER2_CONF_CLK_DIV_LSTIMER2_Field is HAL.UInt18;

   --  LEDC_LSTIMER2_CONF.
   type LSTIMER2_CONF_Register is record
      --  reg_lstimer2_duty_res.
      LSTIMER2_DUTY_RES : LSTIMER2_CONF_LSTIMER2_DUTY_RES_Field := 16#0#;
      --  reg_clk_div_lstimer2.
      CLK_DIV_LSTIMER2  : LSTIMER2_CONF_CLK_DIV_LSTIMER2_Field := 16#0#;
      --  reg_lstimer2_pause.
      LSTIMER2_PAUSE    : Boolean := False;
      --  reg_lstimer2_rst.
      LSTIMER2_RST      : Boolean := True;
      --  reg_tick_sel_lstimer2.
      TICK_SEL_LSTIMER2 : Boolean := False;
      --  Write-only. reg_lstimer2_para_up.
      LSTIMER2_PARA_UP  : Boolean := False;
      --  unspecified
      Reserved_26_31    : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSTIMER2_CONF_Register use record
      LSTIMER2_DUTY_RES at 0 range 0 .. 3;
      CLK_DIV_LSTIMER2  at 0 range 4 .. 21;
      LSTIMER2_PAUSE    at 0 range 22 .. 22;
      LSTIMER2_RST      at 0 range 23 .. 23;
      TICK_SEL_LSTIMER2 at 0 range 24 .. 24;
      LSTIMER2_PARA_UP  at 0 range 25 .. 25;
      Reserved_26_31    at 0 range 26 .. 31;
   end record;

   subtype LSTIMER2_VALUE_LSTIMER2_CNT_Field is HAL.UInt14;

   --  LEDC_LSTIMER2_VALUE.
   type LSTIMER2_VALUE_Register is record
      --  Read-only. reg_lstimer2_cnt.
      LSTIMER2_CNT   : LSTIMER2_VALUE_LSTIMER2_CNT_Field;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSTIMER2_VALUE_Register use record
      LSTIMER2_CNT   at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype LSTIMER3_CONF_LSTIMER3_DUTY_RES_Field is HAL.UInt4;
   subtype LSTIMER3_CONF_CLK_DIV_LSTIMER3_Field is HAL.UInt18;

   --  LEDC_LSTIMER3_CONF.
   type LSTIMER3_CONF_Register is record
      --  reg_lstimer3_duty_res.
      LSTIMER3_DUTY_RES : LSTIMER3_CONF_LSTIMER3_DUTY_RES_Field := 16#0#;
      --  reg_clk_div_lstimer3.
      CLK_DIV_LSTIMER3  : LSTIMER3_CONF_CLK_DIV_LSTIMER3_Field := 16#0#;
      --  reg_lstimer3_pause.
      LSTIMER3_PAUSE    : Boolean := False;
      --  reg_lstimer3_rst.
      LSTIMER3_RST      : Boolean := True;
      --  reg_tick_sel_lstimer3.
      TICK_SEL_LSTIMER3 : Boolean := False;
      --  Write-only. reg_lstimer3_para_up.
      LSTIMER3_PARA_UP  : Boolean := False;
      --  unspecified
      Reserved_26_31    : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSTIMER3_CONF_Register use record
      LSTIMER3_DUTY_RES at 0 range 0 .. 3;
      CLK_DIV_LSTIMER3  at 0 range 4 .. 21;
      LSTIMER3_PAUSE    at 0 range 22 .. 22;
      LSTIMER3_RST      at 0 range 23 .. 23;
      TICK_SEL_LSTIMER3 at 0 range 24 .. 24;
      LSTIMER3_PARA_UP  at 0 range 25 .. 25;
      Reserved_26_31    at 0 range 26 .. 31;
   end record;

   subtype LSTIMER3_VALUE_LSTIMER3_CNT_Field is HAL.UInt14;

   --  LEDC_LSTIMER3_VALUE.
   type LSTIMER3_VALUE_Register is record
      --  Read-only. reg_lstimer3_cnt.
      LSTIMER3_CNT   : LSTIMER3_VALUE_LSTIMER3_CNT_Field;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSTIMER3_VALUE_Register use record
      LSTIMER3_CNT   at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  LEDC_INT_RAW.
   type INT_RAW_Register is record
      --  Read-only. reg_lstimer0_ovf_int_raw.
      LSTIMER0_OVF_INT_RAW        : Boolean;
      --  Read-only. reg_lstimer1_ovf_int_raw.
      LSTIMER1_OVF_INT_RAW        : Boolean;
      --  Read-only. reg_lstimer2_ovf_int_raw.
      LSTIMER2_OVF_INT_RAW        : Boolean;
      --  Read-only. reg_lstimer3_ovf_int_raw.
      LSTIMER3_OVF_INT_RAW        : Boolean;
      --  Read-only. reg_duty_chng_end_lsch0_int_raw.
      DUTY_CHNG_END_LSCH0_INT_RAW : Boolean;
      --  Read-only. reg_duty_chng_end_lsch1_int_raw.
      DUTY_CHNG_END_LSCH1_INT_RAW : Boolean;
      --  Read-only. reg_duty_chng_end_lsch2_int_raw.
      DUTY_CHNG_END_LSCH2_INT_RAW : Boolean;
      --  Read-only. reg_duty_chng_end_lsch3_int_raw.
      DUTY_CHNG_END_LSCH3_INT_RAW : Boolean;
      --  Read-only. reg_duty_chng_end_lsch4_int_raw.
      DUTY_CHNG_END_LSCH4_INT_RAW : Boolean;
      --  Read-only. reg_duty_chng_end_lsch5_int_raw.
      DUTY_CHNG_END_LSCH5_INT_RAW : Boolean;
      --  Read-only. reg_ovf_cnt_lsch0_int_raw.
      OVF_CNT_LSCH0_INT_RAW       : Boolean;
      --  Read-only. reg_ovf_cnt_lsch1_int_raw.
      OVF_CNT_LSCH1_INT_RAW       : Boolean;
      --  Read-only. reg_ovf_cnt_lsch2_int_raw.
      OVF_CNT_LSCH2_INT_RAW       : Boolean;
      --  Read-only. reg_ovf_cnt_lsch3_int_raw.
      OVF_CNT_LSCH3_INT_RAW       : Boolean;
      --  Read-only. reg_ovf_cnt_lsch4_int_raw.
      OVF_CNT_LSCH4_INT_RAW       : Boolean;
      --  Read-only. reg_ovf_cnt_lsch5_int_raw.
      OVF_CNT_LSCH5_INT_RAW       : Boolean;
      --  unspecified
      Reserved_16_31              : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      LSTIMER0_OVF_INT_RAW        at 0 range 0 .. 0;
      LSTIMER1_OVF_INT_RAW        at 0 range 1 .. 1;
      LSTIMER2_OVF_INT_RAW        at 0 range 2 .. 2;
      LSTIMER3_OVF_INT_RAW        at 0 range 3 .. 3;
      DUTY_CHNG_END_LSCH0_INT_RAW at 0 range 4 .. 4;
      DUTY_CHNG_END_LSCH1_INT_RAW at 0 range 5 .. 5;
      DUTY_CHNG_END_LSCH2_INT_RAW at 0 range 6 .. 6;
      DUTY_CHNG_END_LSCH3_INT_RAW at 0 range 7 .. 7;
      DUTY_CHNG_END_LSCH4_INT_RAW at 0 range 8 .. 8;
      DUTY_CHNG_END_LSCH5_INT_RAW at 0 range 9 .. 9;
      OVF_CNT_LSCH0_INT_RAW       at 0 range 10 .. 10;
      OVF_CNT_LSCH1_INT_RAW       at 0 range 11 .. 11;
      OVF_CNT_LSCH2_INT_RAW       at 0 range 12 .. 12;
      OVF_CNT_LSCH3_INT_RAW       at 0 range 13 .. 13;
      OVF_CNT_LSCH4_INT_RAW       at 0 range 14 .. 14;
      OVF_CNT_LSCH5_INT_RAW       at 0 range 15 .. 15;
      Reserved_16_31              at 0 range 16 .. 31;
   end record;

   --  LEDC_INT_ST.
   type INT_ST_Register is record
      --  Read-only. reg_lstimer0_ovf_int_st.
      LSTIMER0_OVF_INT_ST        : Boolean;
      --  Read-only. reg_lstimer1_ovf_int_st.
      LSTIMER1_OVF_INT_ST        : Boolean;
      --  Read-only. reg_lstimer2_ovf_int_st.
      LSTIMER2_OVF_INT_ST        : Boolean;
      --  Read-only. reg_lstimer3_ovf_int_st.
      LSTIMER3_OVF_INT_ST        : Boolean;
      --  Read-only. reg_duty_chng_end_lsch0_int_st.
      DUTY_CHNG_END_LSCH0_INT_ST : Boolean;
      --  Read-only. reg_duty_chng_end_lsch1_int_st.
      DUTY_CHNG_END_LSCH1_INT_ST : Boolean;
      --  Read-only. reg_duty_chng_end_lsch2_int_st.
      DUTY_CHNG_END_LSCH2_INT_ST : Boolean;
      --  Read-only. reg_duty_chng_end_lsch3_int_st.
      DUTY_CHNG_END_LSCH3_INT_ST : Boolean;
      --  Read-only. reg_duty_chng_end_lsch4_int_st.
      DUTY_CHNG_END_LSCH4_INT_ST : Boolean;
      --  Read-only. reg_duty_chng_end_lsch5_int_st.
      DUTY_CHNG_END_LSCH5_INT_ST : Boolean;
      --  Read-only. reg_ovf_cnt_lsch0_int_st.
      OVF_CNT_LSCH0_INT_ST       : Boolean;
      --  Read-only. reg_ovf_cnt_lsch1_int_st.
      OVF_CNT_LSCH1_INT_ST       : Boolean;
      --  Read-only. reg_ovf_cnt_lsch2_int_st.
      OVF_CNT_LSCH2_INT_ST       : Boolean;
      --  Read-only. reg_ovf_cnt_lsch3_int_st.
      OVF_CNT_LSCH3_INT_ST       : Boolean;
      --  Read-only. reg_ovf_cnt_lsch4_int_st.
      OVF_CNT_LSCH4_INT_ST       : Boolean;
      --  Read-only. reg_ovf_cnt_lsch5_int_st.
      OVF_CNT_LSCH5_INT_ST       : Boolean;
      --  unspecified
      Reserved_16_31             : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      LSTIMER0_OVF_INT_ST        at 0 range 0 .. 0;
      LSTIMER1_OVF_INT_ST        at 0 range 1 .. 1;
      LSTIMER2_OVF_INT_ST        at 0 range 2 .. 2;
      LSTIMER3_OVF_INT_ST        at 0 range 3 .. 3;
      DUTY_CHNG_END_LSCH0_INT_ST at 0 range 4 .. 4;
      DUTY_CHNG_END_LSCH1_INT_ST at 0 range 5 .. 5;
      DUTY_CHNG_END_LSCH2_INT_ST at 0 range 6 .. 6;
      DUTY_CHNG_END_LSCH3_INT_ST at 0 range 7 .. 7;
      DUTY_CHNG_END_LSCH4_INT_ST at 0 range 8 .. 8;
      DUTY_CHNG_END_LSCH5_INT_ST at 0 range 9 .. 9;
      OVF_CNT_LSCH0_INT_ST       at 0 range 10 .. 10;
      OVF_CNT_LSCH1_INT_ST       at 0 range 11 .. 11;
      OVF_CNT_LSCH2_INT_ST       at 0 range 12 .. 12;
      OVF_CNT_LSCH3_INT_ST       at 0 range 13 .. 13;
      OVF_CNT_LSCH4_INT_ST       at 0 range 14 .. 14;
      OVF_CNT_LSCH5_INT_ST       at 0 range 15 .. 15;
      Reserved_16_31             at 0 range 16 .. 31;
   end record;

   --  LEDC_INT_ENA.
   type INT_ENA_Register is record
      --  reg_lstimer0_ovf_int_ena.
      LSTIMER0_OVF_INT_ENA        : Boolean := False;
      --  reg_lstimer1_ovf_int_ena.
      LSTIMER1_OVF_INT_ENA        : Boolean := False;
      --  reg_lstimer2_ovf_int_ena.
      LSTIMER2_OVF_INT_ENA        : Boolean := False;
      --  reg_lstimer3_ovf_int_ena.
      LSTIMER3_OVF_INT_ENA        : Boolean := False;
      --  reg_duty_chng_end_lsch0_int_ena.
      DUTY_CHNG_END_LSCH0_INT_ENA : Boolean := False;
      --  reg_duty_chng_end_lsch1_int_ena.
      DUTY_CHNG_END_LSCH1_INT_ENA : Boolean := False;
      --  reg_duty_chng_end_lsch2_int_ena.
      DUTY_CHNG_END_LSCH2_INT_ENA : Boolean := False;
      --  reg_duty_chng_end_lsch3_int_ena.
      DUTY_CHNG_END_LSCH3_INT_ENA : Boolean := False;
      --  reg_duty_chng_end_lsch4_int_ena.
      DUTY_CHNG_END_LSCH4_INT_ENA : Boolean := False;
      --  reg_duty_chng_end_lsch5_int_ena.
      DUTY_CHNG_END_LSCH5_INT_ENA : Boolean := False;
      --  reg_ovf_cnt_lsch0_int_ena.
      OVF_CNT_LSCH0_INT_ENA       : Boolean := False;
      --  reg_ovf_cnt_lsch1_int_ena.
      OVF_CNT_LSCH1_INT_ENA       : Boolean := False;
      --  reg_ovf_cnt_lsch2_int_ena.
      OVF_CNT_LSCH2_INT_ENA       : Boolean := False;
      --  reg_ovf_cnt_lsch3_int_ena.
      OVF_CNT_LSCH3_INT_ENA       : Boolean := False;
      --  reg_ovf_cnt_lsch4_int_ena.
      OVF_CNT_LSCH4_INT_ENA       : Boolean := False;
      --  reg_ovf_cnt_lsch5_int_ena.
      OVF_CNT_LSCH5_INT_ENA       : Boolean := False;
      --  unspecified
      Reserved_16_31              : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      LSTIMER0_OVF_INT_ENA        at 0 range 0 .. 0;
      LSTIMER1_OVF_INT_ENA        at 0 range 1 .. 1;
      LSTIMER2_OVF_INT_ENA        at 0 range 2 .. 2;
      LSTIMER3_OVF_INT_ENA        at 0 range 3 .. 3;
      DUTY_CHNG_END_LSCH0_INT_ENA at 0 range 4 .. 4;
      DUTY_CHNG_END_LSCH1_INT_ENA at 0 range 5 .. 5;
      DUTY_CHNG_END_LSCH2_INT_ENA at 0 range 6 .. 6;
      DUTY_CHNG_END_LSCH3_INT_ENA at 0 range 7 .. 7;
      DUTY_CHNG_END_LSCH4_INT_ENA at 0 range 8 .. 8;
      DUTY_CHNG_END_LSCH5_INT_ENA at 0 range 9 .. 9;
      OVF_CNT_LSCH0_INT_ENA       at 0 range 10 .. 10;
      OVF_CNT_LSCH1_INT_ENA       at 0 range 11 .. 11;
      OVF_CNT_LSCH2_INT_ENA       at 0 range 12 .. 12;
      OVF_CNT_LSCH3_INT_ENA       at 0 range 13 .. 13;
      OVF_CNT_LSCH4_INT_ENA       at 0 range 14 .. 14;
      OVF_CNT_LSCH5_INT_ENA       at 0 range 15 .. 15;
      Reserved_16_31              at 0 range 16 .. 31;
   end record;

   --  LEDC_INT_CLR.
   type INT_CLR_Register is record
      --  Write-only. reg_lstimer0_ovf_int_clr.
      LSTIMER0_OVF_INT_CLR        : Boolean := False;
      --  Write-only. reg_lstimer1_ovf_int_clr.
      LSTIMER1_OVF_INT_CLR        : Boolean := False;
      --  Write-only. reg_lstimer2_ovf_int_clr.
      LSTIMER2_OVF_INT_CLR        : Boolean := False;
      --  Write-only. reg_lstimer3_ovf_int_clr.
      LSTIMER3_OVF_INT_CLR        : Boolean := False;
      --  Write-only. reg_duty_chng_end_lsch0_int_clr.
      DUTY_CHNG_END_LSCH0_INT_CLR : Boolean := False;
      --  Write-only. reg_duty_chng_end_lsch1_int_clr.
      DUTY_CHNG_END_LSCH1_INT_CLR : Boolean := False;
      --  Write-only. reg_duty_chng_end_lsch2_int_clr.
      DUTY_CHNG_END_LSCH2_INT_CLR : Boolean := False;
      --  Write-only. reg_duty_chng_end_lsch3_int_clr.
      DUTY_CHNG_END_LSCH3_INT_CLR : Boolean := False;
      --  Write-only. reg_duty_chng_end_lsch4_int_clr.
      DUTY_CHNG_END_LSCH4_INT_CLR : Boolean := False;
      --  Write-only. reg_duty_chng_end_lsch5_int_clr.
      DUTY_CHNG_END_LSCH5_INT_CLR : Boolean := False;
      --  Write-only. reg_ovf_cnt_lsch0_int_clr.
      OVF_CNT_LSCH0_INT_CLR       : Boolean := False;
      --  Write-only. reg_ovf_cnt_lsch1_int_clr.
      OVF_CNT_LSCH1_INT_CLR       : Boolean := False;
      --  Write-only. reg_ovf_cnt_lsch2_int_clr.
      OVF_CNT_LSCH2_INT_CLR       : Boolean := False;
      --  Write-only. reg_ovf_cnt_lsch3_int_clr.
      OVF_CNT_LSCH3_INT_CLR       : Boolean := False;
      --  Write-only. reg_ovf_cnt_lsch4_int_clr.
      OVF_CNT_LSCH4_INT_CLR       : Boolean := False;
      --  Write-only. reg_ovf_cnt_lsch5_int_clr.
      OVF_CNT_LSCH5_INT_CLR       : Boolean := False;
      --  unspecified
      Reserved_16_31              : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      LSTIMER0_OVF_INT_CLR        at 0 range 0 .. 0;
      LSTIMER1_OVF_INT_CLR        at 0 range 1 .. 1;
      LSTIMER2_OVF_INT_CLR        at 0 range 2 .. 2;
      LSTIMER3_OVF_INT_CLR        at 0 range 3 .. 3;
      DUTY_CHNG_END_LSCH0_INT_CLR at 0 range 4 .. 4;
      DUTY_CHNG_END_LSCH1_INT_CLR at 0 range 5 .. 5;
      DUTY_CHNG_END_LSCH2_INT_CLR at 0 range 6 .. 6;
      DUTY_CHNG_END_LSCH3_INT_CLR at 0 range 7 .. 7;
      DUTY_CHNG_END_LSCH4_INT_CLR at 0 range 8 .. 8;
      DUTY_CHNG_END_LSCH5_INT_CLR at 0 range 9 .. 9;
      OVF_CNT_LSCH0_INT_CLR       at 0 range 10 .. 10;
      OVF_CNT_LSCH1_INT_CLR       at 0 range 11 .. 11;
      OVF_CNT_LSCH2_INT_CLR       at 0 range 12 .. 12;
      OVF_CNT_LSCH3_INT_CLR       at 0 range 13 .. 13;
      OVF_CNT_LSCH4_INT_CLR       at 0 range 14 .. 14;
      OVF_CNT_LSCH5_INT_CLR       at 0 range 15 .. 15;
      Reserved_16_31              at 0 range 16 .. 31;
   end record;

   subtype CONF_APB_CLK_SEL_Field is HAL.UInt2;

   --  LEDC_CONF.
   type CONF_Register is record
      --  reg_apb_clk_sel.
      APB_CLK_SEL   : CONF_APB_CLK_SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_30 : HAL.UInt29 := 16#0#;
      --  reg_clk_en.
      CLK_EN        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_Register use record
      APB_CLK_SEL   at 0 range 0 .. 1;
      Reserved_2_30 at 0 range 2 .. 30;
      CLK_EN        at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LED Control PWM (Pulse Width Modulation)
   type LEDC_Peripheral is record
      --  LEDC_LSCH0_CONF0.
      LSCH0_CONF0    : aliased LSCH0_CONF0_Register;
      --  LEDC_LSCH0_HPOINT.
      LSCH0_HPOINT   : aliased LSCH0_HPOINT_Register;
      --  LEDC_LSCH0_DUTY.
      LSCH0_DUTY     : aliased LSCH0_DUTY_Register;
      --  LEDC_LSCH0_CONF1.
      LSCH0_CONF1    : aliased LSCH0_CONF1_Register;
      --  LEDC_LSCH0_DUTY_R.
      LSCH0_DUTY_R   : aliased LSCH0_DUTY_R_Register;
      --  LEDC_LSCH1_CONF0.
      LSCH1_CONF0    : aliased LSCH1_CONF0_Register;
      --  LEDC_LSCH1_HPOINT.
      LSCH1_HPOINT   : aliased LSCH1_HPOINT_Register;
      --  LEDC_LSCH1_DUTY.
      LSCH1_DUTY     : aliased LSCH1_DUTY_Register;
      --  LEDC_LSCH1_CONF1.
      LSCH1_CONF1    : aliased LSCH1_CONF1_Register;
      --  LEDC_LSCH1_DUTY_R.
      LSCH1_DUTY_R   : aliased LSCH1_DUTY_R_Register;
      --  LEDC_LSCH2_CONF0.
      LSCH2_CONF0    : aliased LSCH2_CONF0_Register;
      --  LEDC_LSCH2_HPOINT.
      LSCH2_HPOINT   : aliased LSCH2_HPOINT_Register;
      --  LEDC_LSCH2_DUTY.
      LSCH2_DUTY     : aliased LSCH2_DUTY_Register;
      --  LEDC_LSCH2_CONF1.
      LSCH2_CONF1    : aliased LSCH2_CONF1_Register;
      --  LEDC_LSCH2_DUTY_R.
      LSCH2_DUTY_R   : aliased LSCH2_DUTY_R_Register;
      --  LEDC_LSCH3_CONF0.
      LSCH3_CONF0    : aliased LSCH3_CONF0_Register;
      --  LEDC_LSCH3_HPOINT.
      LSCH3_HPOINT   : aliased LSCH3_HPOINT_Register;
      --  LEDC_LSCH3_DUTY.
      LSCH3_DUTY     : aliased LSCH3_DUTY_Register;
      --  LEDC_LSCH3_CONF1.
      LSCH3_CONF1    : aliased LSCH3_CONF1_Register;
      --  LEDC_LSCH3_DUTY_R.
      LSCH3_DUTY_R   : aliased LSCH3_DUTY_R_Register;
      --  LEDC_LSCH4_CONF0.
      LSCH4_CONF0    : aliased LSCH4_CONF0_Register;
      --  LEDC_LSCH4_HPOINT.
      LSCH4_HPOINT   : aliased LSCH4_HPOINT_Register;
      --  LEDC_LSCH4_DUTY.
      LSCH4_DUTY     : aliased LSCH4_DUTY_Register;
      --  LEDC_LSCH4_CONF1.
      LSCH4_CONF1    : aliased LSCH4_CONF1_Register;
      --  LEDC_LSCH4_DUTY_R.
      LSCH4_DUTY_R   : aliased LSCH4_DUTY_R_Register;
      --  LEDC_LSCH5_CONF0.
      LSCH5_CONF0    : aliased LSCH5_CONF0_Register;
      --  LEDC_LSCH5_HPOINT.
      LSCH5_HPOINT   : aliased LSCH5_HPOINT_Register;
      --  LEDC_LSCH5_DUTY.
      LSCH5_DUTY     : aliased LSCH5_DUTY_Register;
      --  LEDC_LSCH5_CONF1.
      LSCH5_CONF1    : aliased LSCH5_CONF1_Register;
      --  LEDC_LSCH5_DUTY_R.
      LSCH5_DUTY_R   : aliased LSCH5_DUTY_R_Register;
      --  LEDC_LSTIMER0_CONF.
      LSTIMER0_CONF  : aliased LSTIMER0_CONF_Register;
      --  LEDC_LSTIMER0_VALUE.
      LSTIMER0_VALUE : aliased LSTIMER0_VALUE_Register;
      --  LEDC_LSTIMER1_CONF.
      LSTIMER1_CONF  : aliased LSTIMER1_CONF_Register;
      --  LEDC_LSTIMER1_VALUE.
      LSTIMER1_VALUE : aliased LSTIMER1_VALUE_Register;
      --  LEDC_LSTIMER2_CONF.
      LSTIMER2_CONF  : aliased LSTIMER2_CONF_Register;
      --  LEDC_LSTIMER2_VALUE.
      LSTIMER2_VALUE : aliased LSTIMER2_VALUE_Register;
      --  LEDC_LSTIMER3_CONF.
      LSTIMER3_CONF  : aliased LSTIMER3_CONF_Register;
      --  LEDC_LSTIMER3_VALUE.
      LSTIMER3_VALUE : aliased LSTIMER3_VALUE_Register;
      --  LEDC_INT_RAW.
      INT_RAW        : aliased INT_RAW_Register;
      --  LEDC_INT_ST.
      INT_ST         : aliased INT_ST_Register;
      --  LEDC_INT_ENA.
      INT_ENA        : aliased INT_ENA_Register;
      --  LEDC_INT_CLR.
      INT_CLR        : aliased INT_CLR_Register;
      --  LEDC_CONF.
      CONF           : aliased CONF_Register;
      --  LEDC_DATE.
      DATE           : aliased HAL.UInt32;
   end record
     with Volatile;

   for LEDC_Peripheral use record
      LSCH0_CONF0    at 16#0# range 0 .. 31;
      LSCH0_HPOINT   at 16#4# range 0 .. 31;
      LSCH0_DUTY     at 16#8# range 0 .. 31;
      LSCH0_CONF1    at 16#C# range 0 .. 31;
      LSCH0_DUTY_R   at 16#10# range 0 .. 31;
      LSCH1_CONF0    at 16#14# range 0 .. 31;
      LSCH1_HPOINT   at 16#18# range 0 .. 31;
      LSCH1_DUTY     at 16#1C# range 0 .. 31;
      LSCH1_CONF1    at 16#20# range 0 .. 31;
      LSCH1_DUTY_R   at 16#24# range 0 .. 31;
      LSCH2_CONF0    at 16#28# range 0 .. 31;
      LSCH2_HPOINT   at 16#2C# range 0 .. 31;
      LSCH2_DUTY     at 16#30# range 0 .. 31;
      LSCH2_CONF1    at 16#34# range 0 .. 31;
      LSCH2_DUTY_R   at 16#38# range 0 .. 31;
      LSCH3_CONF0    at 16#3C# range 0 .. 31;
      LSCH3_HPOINT   at 16#40# range 0 .. 31;
      LSCH3_DUTY     at 16#44# range 0 .. 31;
      LSCH3_CONF1    at 16#48# range 0 .. 31;
      LSCH3_DUTY_R   at 16#4C# range 0 .. 31;
      LSCH4_CONF0    at 16#50# range 0 .. 31;
      LSCH4_HPOINT   at 16#54# range 0 .. 31;
      LSCH4_DUTY     at 16#58# range 0 .. 31;
      LSCH4_CONF1    at 16#5C# range 0 .. 31;
      LSCH4_DUTY_R   at 16#60# range 0 .. 31;
      LSCH5_CONF0    at 16#64# range 0 .. 31;
      LSCH5_HPOINT   at 16#68# range 0 .. 31;
      LSCH5_DUTY     at 16#6C# range 0 .. 31;
      LSCH5_CONF1    at 16#70# range 0 .. 31;
      LSCH5_DUTY_R   at 16#74# range 0 .. 31;
      LSTIMER0_CONF  at 16#A0# range 0 .. 31;
      LSTIMER0_VALUE at 16#A4# range 0 .. 31;
      LSTIMER1_CONF  at 16#A8# range 0 .. 31;
      LSTIMER1_VALUE at 16#AC# range 0 .. 31;
      LSTIMER2_CONF  at 16#B0# range 0 .. 31;
      LSTIMER2_VALUE at 16#B4# range 0 .. 31;
      LSTIMER3_CONF  at 16#B8# range 0 .. 31;
      LSTIMER3_VALUE at 16#BC# range 0 .. 31;
      INT_RAW        at 16#C0# range 0 .. 31;
      INT_ST         at 16#C4# range 0 .. 31;
      INT_ENA        at 16#C8# range 0 .. 31;
      INT_CLR        at 16#CC# range 0 .. 31;
      CONF           at 16#D0# range 0 .. 31;
      DATE           at 16#FC# range 0 .. 31;
   end record;

   --  LED Control PWM (Pulse Width Modulation)
   LEDC_Periph : aliased LEDC_Peripheral
     with Import, Address => LEDC_Base;

end ESP32C3.LEDC;
