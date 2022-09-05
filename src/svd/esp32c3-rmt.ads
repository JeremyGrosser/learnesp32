pragma Style_Checks (Off);

--  Copyright 2022 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c3.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32C3.RMT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CH_TX_CONF0_DIV_CNT_Field is HAL.Byte;
   subtype CH_TX_CONF0_MEM_SIZE_Field is HAL.UInt3;

   --  RMT_CH%sCONF%s_REG.
   type CH_TX_CONF0_Register is record
      --  Write-only. reg_tx_start_ch0.
      TX_START       : Boolean := False;
      --  Write-only. reg_mem_rd_rst_ch0.
      MEM_RD_RST     : Boolean := False;
      --  Write-only. reg_apb_mem_rst_ch0.
      APB_MEM_RST    : Boolean := False;
      --  reg_tx_conti_mode_ch0.
      TX_CONTI_MODE  : Boolean := False;
      --  reg_mem_tx_wrap_en_ch0.
      MEM_TX_WRAP_EN : Boolean := False;
      --  reg_idle_out_lv_ch0.
      IDLE_OUT_LV    : Boolean := False;
      --  reg_idle_out_en_ch0.
      IDLE_OUT_EN    : Boolean := False;
      --  reg_tx_stop_ch0.
      TX_STOP        : Boolean := False;
      --  reg_div_cnt_ch0.
      DIV_CNT        : CH_TX_CONF0_DIV_CNT_Field := 16#2#;
      --  reg_mem_size_ch0.
      MEM_SIZE       : CH_TX_CONF0_MEM_SIZE_Field := 16#1#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  reg_carrier_eff_en_ch0.
      CARRIER_EFF_EN : Boolean := True;
      --  reg_carrier_en_ch0.
      CARRIER_EN     : Boolean := True;
      --  reg_carrier_out_lv_ch0.
      CARRIER_OUT_LV : Boolean := True;
      --  Write-only. reg_afifo_rst_ch0.
      AFIFO_RST      : Boolean := False;
      --  Write-only. reg_reg_conf_update_ch0.
      CONF_UPDATE    : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_TX_CONF0_Register use record
      TX_START       at 0 range 0 .. 0;
      MEM_RD_RST     at 0 range 1 .. 1;
      APB_MEM_RST    at 0 range 2 .. 2;
      TX_CONTI_MODE  at 0 range 3 .. 3;
      MEM_TX_WRAP_EN at 0 range 4 .. 4;
      IDLE_OUT_LV    at 0 range 5 .. 5;
      IDLE_OUT_EN    at 0 range 6 .. 6;
      TX_STOP        at 0 range 7 .. 7;
      DIV_CNT        at 0 range 8 .. 15;
      MEM_SIZE       at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CARRIER_EFF_EN at 0 range 20 .. 20;
      CARRIER_EN     at 0 range 21 .. 21;
      CARRIER_OUT_LV at 0 range 22 .. 22;
      AFIFO_RST      at 0 range 23 .. 23;
      CONF_UPDATE    at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  RMT_CH%sCONF%s_REG.
   type CH_TX_CONF0_Registers is array (0 .. 1) of CH_TX_CONF0_Register;

   subtype CH_RX_CONF_DIV_CNT_Field is HAL.Byte;
   subtype CH_RX_CONF_IDLE_THRES_Field is HAL.UInt15;
   subtype CH_RX_CONF_MEM_SIZE_Field is HAL.UInt3;

   --  RMT_CH2CONF0_REG.
   type CH_RX_CONF_Register is record
      --  reg_div_cnt_ch2.
      DIV_CNT        : CH_RX_CONF_DIV_CNT_Field := 16#2#;
      --  reg_idle_thres_ch2.
      IDLE_THRES     : CH_RX_CONF_IDLE_THRES_Field := 16#7FFF#;
      --  reg_mem_size_ch2.
      MEM_SIZE       : CH_RX_CONF_MEM_SIZE_Field := 16#1#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  reg_carrier_en_ch2.
      CARRIER_EN     : Boolean := True;
      --  reg_carrier_out_lv_ch2.
      CARRIER_OUT_LV : Boolean := True;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_RX_CONF_Register use record
      DIV_CNT        at 0 range 0 .. 7;
      IDLE_THRES     at 0 range 8 .. 22;
      MEM_SIZE       at 0 range 23 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      CARRIER_EN     at 0 range 28 .. 28;
      CARRIER_OUT_LV at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CH2CONF1_RX_FILTER_THRES_Field is HAL.Byte;

   --  RMT_CH2CONF1_REG.
   type CH2CONF1_Register is record
      --  reg_rx_en_ch2.
      RX_EN           : Boolean := False;
      --  Write-only. reg_mem_wr_rst_ch2.
      MEM_WR_RST      : Boolean := False;
      --  Write-only. reg_apb_mem_rst_ch2.
      APB_MEM_RST     : Boolean := False;
      --  reg_mem_owner_ch2.
      MEM_OWNER       : Boolean := True;
      --  reg_rx_filter_en_ch2.
      RX_FILTER_EN    : Boolean := False;
      --  reg_rx_filter_thres_ch2.
      RX_FILTER_THRES : CH2CONF1_RX_FILTER_THRES_Field := 16#F#;
      --  reg_mem_rx_wrap_en_ch2.
      MEM_RX_WRAP_EN  : Boolean := False;
      --  Write-only. reg_afifo_rst_ch2.
      AFIFO_RST       : Boolean := False;
      --  Write-only. reg_conf_update_ch2.
      CONF_UPDATE     : Boolean := False;
      --  unspecified
      Reserved_16_31  : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2CONF1_Register use record
      RX_EN           at 0 range 0 .. 0;
      MEM_WR_RST      at 0 range 1 .. 1;
      APB_MEM_RST     at 0 range 2 .. 2;
      MEM_OWNER       at 0 range 3 .. 3;
      RX_FILTER_EN    at 0 range 4 .. 4;
      RX_FILTER_THRES at 0 range 5 .. 12;
      MEM_RX_WRAP_EN  at 0 range 13 .. 13;
      AFIFO_RST       at 0 range 14 .. 14;
      CONF_UPDATE     at 0 range 15 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype CH3CONF1_RX_FILTER_THRES_Field is HAL.Byte;

   --  RMT_CH3CONF1_REG.
   type CH3CONF1_Register is record
      --  reg_rx_en_ch3.
      RX_EN           : Boolean := False;
      --  Write-only. reg_mem_wr_rst_ch3.
      MEM_WR_RST      : Boolean := False;
      --  Write-only. reg_apb_mem_rst_ch3.
      APB_MEM_RST     : Boolean := False;
      --  reg_mem_owner_ch3.
      MEM_OWNER       : Boolean := True;
      --  reg_rx_filter_en_ch3.
      RX_FILTER_EN    : Boolean := False;
      --  reg_rx_filter_thres_ch3.
      RX_FILTER_THRES : CH3CONF1_RX_FILTER_THRES_Field := 16#F#;
      --  reg_mem_rx_wrap_en_ch3.
      MEM_RX_WRAP_EN  : Boolean := False;
      --  Write-only. reg_afifo_rst_ch3.
      AFIFO_RST       : Boolean := False;
      --  Write-only. reg_conf_update_ch3.
      CONF_UPDATE     : Boolean := False;
      --  unspecified
      Reserved_16_31  : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3CONF1_Register use record
      RX_EN           at 0 range 0 .. 0;
      MEM_WR_RST      at 0 range 1 .. 1;
      APB_MEM_RST     at 0 range 2 .. 2;
      MEM_OWNER       at 0 range 3 .. 3;
      RX_FILTER_EN    at 0 range 4 .. 4;
      RX_FILTER_THRES at 0 range 5 .. 12;
      MEM_RX_WRAP_EN  at 0 range 13 .. 13;
      AFIFO_RST       at 0 range 14 .. 14;
      CONF_UPDATE     at 0 range 15 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype CH0STATUS_MEM_RADDR_EX_Field is HAL.UInt9;
   subtype CH0STATUS_STATE_Field is HAL.UInt3;
   subtype CH0STATUS_APB_MEM_WADDR_Field is HAL.UInt9;
   subtype CH0STATUS_APB_MEM_RADDR_Field is HAL.Byte;

   --  RMT_CH0STATUS_REG.
   type CH0STATUS_Register is record
      --  Read-only. reg_mem_raddr_ex_ch0.
      MEM_RADDR_EX   : CH0STATUS_MEM_RADDR_EX_Field;
      --  Read-only. reg_state_ch0.
      STATE          : CH0STATUS_STATE_Field;
      --  Read-only. reg_apb_mem_waddr_ch0.
      APB_MEM_WADDR  : CH0STATUS_APB_MEM_WADDR_Field;
      --  Read-only. reg_apb_mem_rd_err_ch0.
      APB_MEM_RD_ERR : Boolean;
      --  Read-only. reg_mem_empty_ch0.
      MEM_EMPTY      : Boolean;
      --  Read-only. reg_apb_mem_wr_err_ch0.
      APB_MEM_WR_ERR : Boolean;
      --  Read-only. reg_apb_mem_raddr_ch0.
      APB_MEM_RADDR  : CH0STATUS_APB_MEM_RADDR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0STATUS_Register use record
      MEM_RADDR_EX   at 0 range 0 .. 8;
      STATE          at 0 range 9 .. 11;
      APB_MEM_WADDR  at 0 range 12 .. 20;
      APB_MEM_RD_ERR at 0 range 21 .. 21;
      MEM_EMPTY      at 0 range 22 .. 22;
      APB_MEM_WR_ERR at 0 range 23 .. 23;
      APB_MEM_RADDR  at 0 range 24 .. 31;
   end record;

   subtype CH1STATUS_MEM_RADDR_EX_Field is HAL.UInt9;
   subtype CH1STATUS_STATE_Field is HAL.UInt3;
   subtype CH1STATUS_APB_MEM_WADDR_Field is HAL.UInt9;
   subtype CH1STATUS_APB_MEM_RADDR_Field is HAL.Byte;

   --  RMT_CH1STATUS_REG.
   type CH1STATUS_Register is record
      --  Read-only. reg_mem_raddr_ex_ch1.
      MEM_RADDR_EX   : CH1STATUS_MEM_RADDR_EX_Field;
      --  Read-only. reg_state_ch1.
      STATE          : CH1STATUS_STATE_Field;
      --  Read-only. reg_apb_mem_waddr_ch1.
      APB_MEM_WADDR  : CH1STATUS_APB_MEM_WADDR_Field;
      --  Read-only. reg_apb_mem_rd_err_ch1.
      APB_MEM_RD_ERR : Boolean;
      --  Read-only. reg_mem_empty_ch1.
      MEM_EMPTY      : Boolean;
      --  Read-only. reg_apb_mem_wr_err_ch1.
      APB_MEM_WR_ERR : Boolean;
      --  Read-only. reg_apb_mem_raddr_ch1.
      APB_MEM_RADDR  : CH1STATUS_APB_MEM_RADDR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1STATUS_Register use record
      MEM_RADDR_EX   at 0 range 0 .. 8;
      STATE          at 0 range 9 .. 11;
      APB_MEM_WADDR  at 0 range 12 .. 20;
      APB_MEM_RD_ERR at 0 range 21 .. 21;
      MEM_EMPTY      at 0 range 22 .. 22;
      APB_MEM_WR_ERR at 0 range 23 .. 23;
      APB_MEM_RADDR  at 0 range 24 .. 31;
   end record;

   subtype CH2STATUS_MEM_WADDR_EX_Field is HAL.UInt9;
   subtype CH2STATUS_APB_MEM_RADDR_Field is HAL.UInt9;
   subtype CH2STATUS_STATE_Field is HAL.UInt3;

   --  RMT_CH2STATUS_REG.
   type CH2STATUS_Register is record
      --  Read-only. reg_mem_waddr_ex_ch2.
      MEM_WADDR_EX   : CH2STATUS_MEM_WADDR_EX_Field;
      --  unspecified
      Reserved_9_11  : HAL.UInt3;
      --  Read-only. reg_apb_mem_raddr_ch2.
      APB_MEM_RADDR  : CH2STATUS_APB_MEM_RADDR_Field;
      --  unspecified
      Reserved_21_21 : HAL.Bit;
      --  Read-only. reg_state_ch2.
      STATE          : CH2STATUS_STATE_Field;
      --  Read-only. reg_mem_owner_err_ch2.
      MEM_OWNER_ERR  : Boolean;
      --  Read-only. reg_mem_full_ch2.
      MEM_FULL       : Boolean;
      --  Read-only. reg_apb_mem_rd_err_ch2.
      APB_MEM_RD_ERR : Boolean;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2STATUS_Register use record
      MEM_WADDR_EX   at 0 range 0 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      APB_MEM_RADDR  at 0 range 12 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      STATE          at 0 range 22 .. 24;
      MEM_OWNER_ERR  at 0 range 25 .. 25;
      MEM_FULL       at 0 range 26 .. 26;
      APB_MEM_RD_ERR at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype CH3STATUS_MEM_WADDR_EX_Field is HAL.UInt9;
   subtype CH3STATUS_APB_MEM_RADDR_Field is HAL.UInt9;
   subtype CH3STATUS_STATE_Field is HAL.UInt3;

   --  RMT_CH3STATUS_REG.
   type CH3STATUS_Register is record
      --  Read-only. reg_mem_waddr_ex_ch3.
      MEM_WADDR_EX   : CH3STATUS_MEM_WADDR_EX_Field;
      --  unspecified
      Reserved_9_11  : HAL.UInt3;
      --  Read-only. reg_apb_mem_raddr_ch3.
      APB_MEM_RADDR  : CH3STATUS_APB_MEM_RADDR_Field;
      --  unspecified
      Reserved_21_21 : HAL.Bit;
      --  Read-only. reg_state_ch3.
      STATE          : CH3STATUS_STATE_Field;
      --  Read-only. reg_mem_owner_err_ch3.
      MEM_OWNER_ERR  : Boolean;
      --  Read-only. reg_mem_full_ch3.
      MEM_FULL       : Boolean;
      --  Read-only. reg_apb_mem_rd_err_ch3.
      APB_MEM_RD_ERR : Boolean;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3STATUS_Register use record
      MEM_WADDR_EX   at 0 range 0 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      APB_MEM_RADDR  at 0 range 12 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      STATE          at 0 range 22 .. 24;
      MEM_OWNER_ERR  at 0 range 25 .. 25;
      MEM_FULL       at 0 range 26 .. 26;
      APB_MEM_RD_ERR at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  RMT_INT_RAW_REG.
   type INT_RAW_Register is record
      --  Read-only. reg_ch%s_tx_end_int_raw.
      CH%s_TX_END_INT_RAW       : Boolean;
      --  unspecified
      Reserved_1_1              : HAL.Bit;
      --  Read-only. reg_ch2_rx_end_int_raw.
      CH%s_RX_END_INT_RAW       : Boolean;
      --  unspecified
      Reserved_3_3              : HAL.Bit;
      --  Read-only. reg_ch%s_err_int_raw.
      CH%s_TX_ERR_INT_RAW       : Boolean;
      --  unspecified
      Reserved_5_5              : HAL.Bit;
      --  Read-only. reg_ch2_err_int_raw.
      CH%s_RX_ERR_INT_RAW       : Boolean;
      --  unspecified
      Reserved_7_7              : HAL.Bit;
      --  Read-only. reg_ch%s_tx_thr_event_int_raw.
      CH%s_TX_THR_EVENT_INT_RAW : Boolean;
      --  unspecified
      Reserved_9_9              : HAL.Bit;
      --  Read-only. reg_ch2_rx_thr_event_int_raw.
      CH2_RX_THR_EVENT_INT_RAW  : Boolean;
      --  Read-only. reg_ch3_rx_thr_event_int_raw.
      CH3_RX_THR_EVENT_INT_RAW  : Boolean;
      --  Read-only. reg_ch%s_tx_loop_int_raw.
      CH%s_TX_LOOP_INT_RAW      : Boolean;
      --  unspecified
      Reserved_13_31            : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      CH%s_TX_END_INT_RAW       at 0 range 0 .. 0;
      Reserved_1_1              at 0 range 1 .. 1;
      CH%s_RX_END_INT_RAW       at 0 range 2 .. 2;
      Reserved_3_3              at 0 range 3 .. 3;
      CH%s_TX_ERR_INT_RAW       at 0 range 4 .. 4;
      Reserved_5_5              at 0 range 5 .. 5;
      CH%s_RX_ERR_INT_RAW       at 0 range 6 .. 6;
      Reserved_7_7              at 0 range 7 .. 7;
      CH%s_TX_THR_EVENT_INT_RAW at 0 range 8 .. 8;
      Reserved_9_9              at 0 range 9 .. 9;
      CH2_RX_THR_EVENT_INT_RAW  at 0 range 10 .. 10;
      CH3_RX_THR_EVENT_INT_RAW  at 0 range 11 .. 11;
      CH%s_TX_LOOP_INT_RAW      at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   --  RMT_INT_ST_REG.
   type INT_ST_Register is record
      --  Read-only. reg_ch%s_tx_end_int_st.
      CH%s_TX_END_INT_ST       : Boolean;
      --  unspecified
      Reserved_1_1             : HAL.Bit;
      --  Read-only. reg_ch2_rx_end_int_st.
      CH%s_RX_END_INT_ST       : Boolean;
      --  unspecified
      Reserved_3_3             : HAL.Bit;
      --  Read-only. reg_ch%s_err_int_st.
      CH%s_TX_ERR_INT_ST       : Boolean;
      --  unspecified
      Reserved_5_5             : HAL.Bit;
      --  Read-only. reg_ch2_err_int_st.
      CH%s_RX_ERR_INT_ST       : Boolean;
      --  unspecified
      Reserved_7_7             : HAL.Bit;
      --  Read-only. reg_ch%s_tx_thr_event_int_st.
      CH%s_TX_THR_EVENT_INT_ST : Boolean;
      --  unspecified
      Reserved_9_9             : HAL.Bit;
      --  Read-only. reg_ch2_rx_thr_event_int_st.
      CH2_RX_THR_EVENT_INT_ST  : Boolean;
      --  Read-only. reg_ch3_rx_thr_event_int_st.
      CH3_RX_THR_EVENT_INT_ST  : Boolean;
      --  Read-only. reg_ch%s_tx_loop_int_st.
      CH%s_TX_LOOP_INT_ST      : Boolean;
      --  unspecified
      Reserved_13_31           : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      CH%s_TX_END_INT_ST       at 0 range 0 .. 0;
      Reserved_1_1             at 0 range 1 .. 1;
      CH%s_RX_END_INT_ST       at 0 range 2 .. 2;
      Reserved_3_3             at 0 range 3 .. 3;
      CH%s_TX_ERR_INT_ST       at 0 range 4 .. 4;
      Reserved_5_5             at 0 range 5 .. 5;
      CH%s_RX_ERR_INT_ST       at 0 range 6 .. 6;
      Reserved_7_7             at 0 range 7 .. 7;
      CH%s_TX_THR_EVENT_INT_ST at 0 range 8 .. 8;
      Reserved_9_9             at 0 range 9 .. 9;
      CH2_RX_THR_EVENT_INT_ST  at 0 range 10 .. 10;
      CH3_RX_THR_EVENT_INT_ST  at 0 range 11 .. 11;
      CH%s_TX_LOOP_INT_ST      at 0 range 12 .. 12;
      Reserved_13_31           at 0 range 13 .. 31;
   end record;

   --  RMT_INT_ENA_REG.
   type INT_ENA_Register is record
      --  reg_ch%s_tx_end_int_ena.
      CH%s_TX_END_INT_ENA       : Boolean := False;
      --  unspecified
      Reserved_1_1              : HAL.Bit := 16#0#;
      --  reg_ch2_rx_end_int_ena.
      CH%s_RX_END_INT_ENA       : Boolean := False;
      --  unspecified
      Reserved_3_3              : HAL.Bit := 16#0#;
      --  reg_ch%s_err_int_ena.
      CH%s_TX_ERR_INT_ENA       : Boolean := False;
      --  unspecified
      Reserved_5_5              : HAL.Bit := 16#0#;
      --  reg_ch2_err_int_ena.
      CH%s_RX_ERR_INT_ENA       : Boolean := False;
      --  unspecified
      Reserved_7_7              : HAL.Bit := 16#0#;
      --  reg_ch%s_tx_thr_event_int_ena.
      CH%s_TX_THR_EVENT_INT_ENA : Boolean := False;
      --  unspecified
      Reserved_9_9              : HAL.Bit := 16#0#;
      --  reg_ch2_rx_thr_event_int_ena.
      CH2_RX_THR_EVENT_INT_ENA  : Boolean := False;
      --  reg_ch3_rx_thr_event_int_ena.
      CH3_RX_THR_EVENT_INT_ENA  : Boolean := False;
      --  reg_ch%s_tx_loop_int_ena.
      CH%s_TX_LOOP_INT_ENA      : Boolean := False;
      --  unspecified
      Reserved_13_31            : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      CH%s_TX_END_INT_ENA       at 0 range 0 .. 0;
      Reserved_1_1              at 0 range 1 .. 1;
      CH%s_RX_END_INT_ENA       at 0 range 2 .. 2;
      Reserved_3_3              at 0 range 3 .. 3;
      CH%s_TX_ERR_INT_ENA       at 0 range 4 .. 4;
      Reserved_5_5              at 0 range 5 .. 5;
      CH%s_RX_ERR_INT_ENA       at 0 range 6 .. 6;
      Reserved_7_7              at 0 range 7 .. 7;
      CH%s_TX_THR_EVENT_INT_ENA at 0 range 8 .. 8;
      Reserved_9_9              at 0 range 9 .. 9;
      CH2_RX_THR_EVENT_INT_ENA  at 0 range 10 .. 10;
      CH3_RX_THR_EVENT_INT_ENA  at 0 range 11 .. 11;
      CH%s_TX_LOOP_INT_ENA      at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   --  RMT_INT_CLR_REG.
   type INT_CLR_Register is record
      --  Write-only. reg_ch%s_tx_end_int_clr.
      CH%s_TX_END_INT_CLR       : Boolean := False;
      --  unspecified
      Reserved_1_1              : HAL.Bit := 16#0#;
      --  Write-only. reg_ch2_rx_end_int_clr.
      CH%s_RX_END_INT_CLR       : Boolean := False;
      --  unspecified
      Reserved_3_3              : HAL.Bit := 16#0#;
      --  Write-only. reg_ch%s_err_int_clr.
      CH%s_TX_ERR_INT_CLR       : Boolean := False;
      --  unspecified
      Reserved_5_5              : HAL.Bit := 16#0#;
      --  Write-only. reg_ch2_err_int_clr.
      CH%s_RX_ERR_INT_CLR       : Boolean := False;
      --  unspecified
      Reserved_7_7              : HAL.Bit := 16#0#;
      --  Write-only. reg_ch%s_tx_thr_event_int_clr.
      CH%s_TX_THR_EVENT_INT_CLR : Boolean := False;
      --  unspecified
      Reserved_9_9              : HAL.Bit := 16#0#;
      --  Write-only. reg_ch2_rx_thr_event_int_clr.
      CH2_RX_THR_EVENT_INT_CLR  : Boolean := False;
      --  Write-only. reg_ch3_rx_thr_event_int_clr.
      CH3_RX_THR_EVENT_INT_CLR  : Boolean := False;
      --  Write-only. reg_ch%s_tx_loop_int_clr.
      CH%s_TX_LOOP_INT_CLR      : Boolean := False;
      --  unspecified
      Reserved_13_31            : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      CH%s_TX_END_INT_CLR       at 0 range 0 .. 0;
      Reserved_1_1              at 0 range 1 .. 1;
      CH%s_RX_END_INT_CLR       at 0 range 2 .. 2;
      Reserved_3_3              at 0 range 3 .. 3;
      CH%s_TX_ERR_INT_CLR       at 0 range 4 .. 4;
      Reserved_5_5              at 0 range 5 .. 5;
      CH%s_RX_ERR_INT_CLR       at 0 range 6 .. 6;
      Reserved_7_7              at 0 range 7 .. 7;
      CH%s_TX_THR_EVENT_INT_CLR at 0 range 8 .. 8;
      Reserved_9_9              at 0 range 9 .. 9;
      CH2_RX_THR_EVENT_INT_CLR  at 0 range 10 .. 10;
      CH3_RX_THR_EVENT_INT_CLR  at 0 range 11 .. 11;
      CH%s_TX_LOOP_INT_CLR      at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   subtype CH0CARRIER_DUTY_CARRIER_LOW_Field is HAL.UInt16;
   subtype CH0CARRIER_DUTY_CARRIER_HIGH_Field is HAL.UInt16;

   --  RMT_CH0CARRIER_DUTY_REG.
   type CH0CARRIER_DUTY_Register is record
      --  reg_carrier_low_ch0.
      CARRIER_LOW  : CH0CARRIER_DUTY_CARRIER_LOW_Field := 16#40#;
      --  reg_carrier_high_ch0.
      CARRIER_HIGH : CH0CARRIER_DUTY_CARRIER_HIGH_Field := 16#40#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0CARRIER_DUTY_Register use record
      CARRIER_LOW  at 0 range 0 .. 15;
      CARRIER_HIGH at 0 range 16 .. 31;
   end record;

   subtype CH1CARRIER_DUTY_CARRIER_LOW_Field is HAL.UInt16;
   subtype CH1CARRIER_DUTY_CARRIER_HIGH_Field is HAL.UInt16;

   --  RMT_CH1CARRIER_DUTY_REG.
   type CH1CARRIER_DUTY_Register is record
      --  reg_carrier_low_ch1.
      CARRIER_LOW  : CH1CARRIER_DUTY_CARRIER_LOW_Field := 16#40#;
      --  reg_carrier_high_ch1.
      CARRIER_HIGH : CH1CARRIER_DUTY_CARRIER_HIGH_Field := 16#40#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1CARRIER_DUTY_Register use record
      CARRIER_LOW  at 0 range 0 .. 15;
      CARRIER_HIGH at 0 range 16 .. 31;
   end record;

   subtype CH2_RX_CARRIER_RM_CARRIER_LOW_THRES_Field is HAL.UInt16;
   subtype CH2_RX_CARRIER_RM_CARRIER_HIGH_THRES_Field is HAL.UInt16;

   --  RMT_CH2_RX_CARRIER_RM_REG.
   type CH2_RX_CARRIER_RM_Register is record
      --  reg_carrier_low_thres_ch2.
      CARRIER_LOW_THRES  : CH2_RX_CARRIER_RM_CARRIER_LOW_THRES_Field := 16#0#;
      --  reg_carrier_high_thres_ch2.
      CARRIER_HIGH_THRES : CH2_RX_CARRIER_RM_CARRIER_HIGH_THRES_Field :=
                            16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_RX_CARRIER_RM_Register use record
      CARRIER_LOW_THRES  at 0 range 0 .. 15;
      CARRIER_HIGH_THRES at 0 range 16 .. 31;
   end record;

   subtype CH3_RX_CARRIER_RM_CARRIER_LOW_THRES_Field is HAL.UInt16;
   subtype CH3_RX_CARRIER_RM_CARRIER_HIGH_THRES_Field is HAL.UInt16;

   --  RMT_CH3_RX_CARRIER_RM_REG.
   type CH3_RX_CARRIER_RM_Register is record
      --  reg_carrier_low_thres_ch3.
      CARRIER_LOW_THRES  : CH3_RX_CARRIER_RM_CARRIER_LOW_THRES_Field := 16#0#;
      --  reg_carrier_high_thres_ch3.
      CARRIER_HIGH_THRES : CH3_RX_CARRIER_RM_CARRIER_HIGH_THRES_Field :=
                            16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_RX_CARRIER_RM_Register use record
      CARRIER_LOW_THRES  at 0 range 0 .. 15;
      CARRIER_HIGH_THRES at 0 range 16 .. 31;
   end record;

   subtype CH_TX_LIM_TX_LIM_Field is HAL.UInt9;
   subtype CH_TX_LIM_TX_LOOP_NUM_Field is HAL.UInt10;

   --  RMT_CH%s_TX_LIM_REG.
   type CH_TX_LIM_Register is record
      --  reg_rmt_tx_lim_ch0.
      TX_LIM           : CH_TX_LIM_TX_LIM_Field := 16#80#;
      --  reg_rmt_tx_loop_num_ch0.
      TX_LOOP_NUM      : CH_TX_LIM_TX_LOOP_NUM_Field := 16#0#;
      --  reg_rmt_tx_loop_cnt_en_ch0.
      TX_LOOP_CNT_EN   : Boolean := False;
      --  Write-only. reg_loop_count_reset_ch0.
      LOOP_COUNT_RESET : Boolean := False;
      --  unspecified
      Reserved_21_31   : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_TX_LIM_Register use record
      TX_LIM           at 0 range 0 .. 8;
      TX_LOOP_NUM      at 0 range 9 .. 18;
      TX_LOOP_CNT_EN   at 0 range 19 .. 19;
      LOOP_COUNT_RESET at 0 range 20 .. 20;
      Reserved_21_31   at 0 range 21 .. 31;
   end record;

   --  RMT_CH%s_TX_LIM_REG.
   type CH_TX_LIM_Registers is array (0 .. 1) of CH_TX_LIM_Register;

   subtype CH_RX_LIM_RX_LIM_Field is HAL.UInt9;

   --  RMT_CH2_RX_LIM_REG.
   type CH_RX_LIM_Register is record
      --  reg_rmt_rx_lim_ch2.
      RX_LIM        : CH_RX_LIM_RX_LIM_Field := 16#80#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_RX_LIM_Register use record
      RX_LIM        at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RMT_CH2_RX_LIM_REG.
   type CH_RX_LIM_Registers is array (0 .. 1) of CH_RX_LIM_Register;

   subtype SYS_CONF_SCLK_DIV_NUM_Field is HAL.Byte;
   subtype SYS_CONF_SCLK_DIV_A_Field is HAL.UInt6;
   subtype SYS_CONF_SCLK_DIV_B_Field is HAL.UInt6;
   subtype SYS_CONF_SCLK_SEL_Field is HAL.UInt2;

   --  RMT_SYS_CONF_REG.
   type SYS_CONF_Register is record
      --  reg_apb_fifo_mask.
      APB_FIFO_MASK    : Boolean := False;
      --  reg_mem_clk_force_on.
      MEM_CLK_FORCE_ON : Boolean := False;
      --  reg_rmt_mem_force_pd.
      MEM_FORCE_PD     : Boolean := False;
      --  reg_rmt_mem_force_pu.
      MEM_FORCE_PU     : Boolean := False;
      --  reg_rmt_sclk_div_num.
      SCLK_DIV_NUM     : SYS_CONF_SCLK_DIV_NUM_Field := 16#1#;
      --  reg_rmt_sclk_div_a.
      SCLK_DIV_A       : SYS_CONF_SCLK_DIV_A_Field := 16#0#;
      --  reg_rmt_sclk_div_b.
      SCLK_DIV_B       : SYS_CONF_SCLK_DIV_B_Field := 16#0#;
      --  reg_rmt_sclk_sel.
      SCLK_SEL         : SYS_CONF_SCLK_SEL_Field := 16#1#;
      --  reg_rmt_sclk_active.
      SCLK_ACTIVE      : Boolean := True;
      --  unspecified
      Reserved_27_30   : HAL.UInt4 := 16#0#;
      --  reg_clk_en.
      CLK_EN           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYS_CONF_Register use record
      APB_FIFO_MASK    at 0 range 0 .. 0;
      MEM_CLK_FORCE_ON at 0 range 1 .. 1;
      MEM_FORCE_PD     at 0 range 2 .. 2;
      MEM_FORCE_PU     at 0 range 3 .. 3;
      SCLK_DIV_NUM     at 0 range 4 .. 11;
      SCLK_DIV_A       at 0 range 12 .. 17;
      SCLK_DIV_B       at 0 range 18 .. 23;
      SCLK_SEL         at 0 range 24 .. 25;
      SCLK_ACTIVE      at 0 range 26 .. 26;
      Reserved_27_30   at 0 range 27 .. 30;
      CLK_EN           at 0 range 31 .. 31;
   end record;

   --  TX_SIM_TX_SIM_CH array
   type TX_SIM_TX_SIM_CH_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TX_SIM_TX_SIM_CH
   type TX_SIM_TX_SIM_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TX_SIM_CH as a value
            Val : HAL.UInt2;
         when True =>
            --  TX_SIM_CH as an array
            Arr : TX_SIM_TX_SIM_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TX_SIM_TX_SIM_CH_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  RMT_TX_SIM_REG.
   type TX_SIM_Register is record
      --  reg_rmt_tx_sim_ch0.
      TX_SIM_CH     : TX_SIM_TX_SIM_CH_Field :=
                       (As_Array => False, Val => 16#0#);
      --  reg_rmt_tx_sim_en.
      TX_SIM_EN     : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TX_SIM_Register use record
      TX_SIM_CH     at 0 range 0 .. 1;
      TX_SIM_EN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  REF_CNT_RST_CH array
   type REF_CNT_RST_CH_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for REF_CNT_RST_CH
   type REF_CNT_RST_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt4;
         when True =>
            --  CH as an array
            Arr : REF_CNT_RST_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for REF_CNT_RST_CH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RMT_REF_CNT_RST_REG.
   type REF_CNT_RST_Register is record
      --  Write-only. reg_ref_cnt_rst_ch0.
      CH            : REF_CNT_RST_CH_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REF_CNT_RST_Register use record
      CH            at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DATE_DATE_Field is HAL.UInt28;

   --  RMT_DATE_REG.
   type DATE_Register is record
      --  reg_rmt_date.
      DATE           : DATE_DATE_Field := 16#2006231#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      DATE           at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Remote Control Peripheral
   type RMT_Peripheral is record
      --  RMT_CH0DATA_REG.
      CH0DATA           : aliased HAL.UInt32;
      --  RMT_CH1DATA_REG.
      CH1DATA           : aliased HAL.UInt32;
      --  RMT_CH2DATA_REG.
      CH2DATA           : aliased HAL.UInt32;
      --  RMT_CH3DATA_REG.
      CH3DATA           : aliased HAL.UInt32;
      --  RMT_CH%sCONF%s_REG.
      CH_TX_CONF0       : aliased CH_TX_CONF0_Registers;
      --  RMT_CH2CONF0_REG.
      CH_RX_CONF00      : aliased CH_RX_CONF_Register;
      --  RMT_CH2CONF1_REG.
      CH2CONF1          : aliased CH2CONF1_Register;
      --  RMT_CH2CONF0_REG.
      CH_RX_CONF01      : aliased CH_RX_CONF_Register;
      --  RMT_CH3CONF1_REG.
      CH3CONF1          : aliased CH3CONF1_Register;
      --  RMT_CH0STATUS_REG.
      CH0STATUS         : aliased CH0STATUS_Register;
      --  RMT_CH1STATUS_REG.
      CH1STATUS         : aliased CH1STATUS_Register;
      --  RMT_CH2STATUS_REG.
      CH2STATUS         : aliased CH2STATUS_Register;
      --  RMT_CH3STATUS_REG.
      CH3STATUS         : aliased CH3STATUS_Register;
      --  RMT_INT_RAW_REG.
      INT_RAW           : aliased INT_RAW_Register;
      --  RMT_INT_ST_REG.
      INT_ST            : aliased INT_ST_Register;
      --  RMT_INT_ENA_REG.
      INT_ENA           : aliased INT_ENA_Register;
      --  RMT_INT_CLR_REG.
      INT_CLR           : aliased INT_CLR_Register;
      --  RMT_CH0CARRIER_DUTY_REG.
      CH0CARRIER_DUTY   : aliased CH0CARRIER_DUTY_Register;
      --  RMT_CH1CARRIER_DUTY_REG.
      CH1CARRIER_DUTY   : aliased CH1CARRIER_DUTY_Register;
      --  RMT_CH2_RX_CARRIER_RM_REG.
      CH2_RX_CARRIER_RM : aliased CH2_RX_CARRIER_RM_Register;
      --  RMT_CH3_RX_CARRIER_RM_REG.
      CH3_RX_CARRIER_RM : aliased CH3_RX_CARRIER_RM_Register;
      --  RMT_CH%s_TX_LIM_REG.
      CH_TX_LIM         : aliased CH_TX_LIM_Registers;
      --  RMT_CH2_RX_LIM_REG.
      CH_RX_LIM         : aliased CH_RX_LIM_Registers;
      --  RMT_SYS_CONF_REG.
      SYS_CONF          : aliased SYS_CONF_Register;
      --  RMT_TX_SIM_REG.
      TX_SIM            : aliased TX_SIM_Register;
      --  RMT_REF_CNT_RST_REG.
      REF_CNT_RST       : aliased REF_CNT_RST_Register;
      --  RMT_DATE_REG.
      DATE              : aliased DATE_Register;
   end record
     with Volatile;

   for RMT_Peripheral use record
      CH0DATA           at 16#0# range 0 .. 31;
      CH1DATA           at 16#4# range 0 .. 31;
      CH2DATA           at 16#8# range 0 .. 31;
      CH3DATA           at 16#C# range 0 .. 31;
      CH_TX_CONF0       at 16#10# range 0 .. 63;
      CH_RX_CONF00      at 16#18# range 0 .. 31;
      CH2CONF1          at 16#1C# range 0 .. 31;
      CH_RX_CONF01      at 16#20# range 0 .. 31;
      CH3CONF1          at 16#24# range 0 .. 31;
      CH0STATUS         at 16#28# range 0 .. 31;
      CH1STATUS         at 16#2C# range 0 .. 31;
      CH2STATUS         at 16#30# range 0 .. 31;
      CH3STATUS         at 16#34# range 0 .. 31;
      INT_RAW           at 16#38# range 0 .. 31;
      INT_ST            at 16#3C# range 0 .. 31;
      INT_ENA           at 16#40# range 0 .. 31;
      INT_CLR           at 16#44# range 0 .. 31;
      CH0CARRIER_DUTY   at 16#48# range 0 .. 31;
      CH1CARRIER_DUTY   at 16#4C# range 0 .. 31;
      CH2_RX_CARRIER_RM at 16#50# range 0 .. 31;
      CH3_RX_CARRIER_RM at 16#54# range 0 .. 31;
      CH_TX_LIM         at 16#58# range 0 .. 63;
      CH_RX_LIM         at 16#60# range 0 .. 63;
      SYS_CONF          at 16#68# range 0 .. 31;
      TX_SIM            at 16#6C# range 0 .. 31;
      REF_CNT_RST       at 16#70# range 0 .. 31;
      DATE              at 16#CC# range 0 .. 31;
   end record;

   --  Remote Control Peripheral
   RMT_Periph : aliased RMT_Peripheral
     with Import, Address => RMT_Base;

end ESP32C3.RMT;
