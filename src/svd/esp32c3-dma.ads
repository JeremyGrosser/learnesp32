pragma Style_Checks (Off);

--  Copyright 2022 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c3.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32C3.DMA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  DMA_INT_RAW_CH0_REG.
   type INT_RAW_CH0_Register is record
      --  Read-only. The raw interrupt bit turns to high level when the last
      --  data pointed by one inlink descriptor has been received for Rx
      --  channel 0.
      IN_DONE_CH0_INT_RAW       : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when the last
      --  data pointed by one inlink descriptor has been received for Rx
      --  channel 0. For UHCI0, the raw interrupt bit turns to high level when
      --  the last data pointed by one inlink descriptor has been received and
      --  no data error is detected for Rx channel 0.
      IN_SUC_EOF_CH0_INT_RAW    : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when data error
      --  is detected only in the case that the peripheral is UHCI0 for Rx
      --  channel 0. For other peripherals, this raw interrupt is reserved.
      IN_ERR_EOF_CH0_INT_RAW    : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when the last
      --  data pointed by one outlink descriptor has been transmitted to
      --  peripherals for Tx channel 0.
      OUT_DONE_CH0_INT_RAW      : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when the last
      --  data pointed by one outlink descriptor has been read from memory for
      --  Tx channel 0.
      OUT_EOF_CH0_INT_RAW       : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when detecting
      --  inlink descriptor error, including owner error, the second and third
      --  word error of inlink descriptor for Rx channel 0.
      IN_DSCR_ERR_CH0_INT_RAW   : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when detecting
      --  outlink descriptor error, including owner error, the second and third
      --  word error of outlink descriptor for Tx channel 0.
      OUT_DSCR_ERR_CH0_INT_RAW  : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when Rx buffer
      --  pointed by inlink is full and receiving data is not completed, but
      --  there is no more inlink for Rx channel 0.
      IN_DSCR_EMPTY_CH0_INT_RAW : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when data
      --  corresponding a outlink (includes one link descriptor or few link
      --  descriptors) is transmitted out for Tx channel 0.
      OUT_TOTAL_EOF_CH0_INT_RAW : Boolean;
      --  Read-only. This raw interrupt bit turns to high level when level 1
      --  fifo of Rx channel 0 is overflow.
      INFIFO_OVF_CH0_INT_RAW    : Boolean;
      --  Read-only. This raw interrupt bit turns to high level when level 1
      --  fifo of Rx channel 0 is underflow.
      INFIFO_UDF_CH0_INT_RAW    : Boolean;
      --  Read-only. This raw interrupt bit turns to high level when level 1
      --  fifo of Tx channel 0 is overflow.
      OUTFIFO_OVF_CH0_INT_RAW   : Boolean;
      --  Read-only. This raw interrupt bit turns to high level when level 1
      --  fifo of Tx channel 0 is underflow.
      OUTFIFO_UDF_CH0_INT_RAW   : Boolean;
      --  unspecified
      Reserved_13_31            : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_CH0_Register use record
      IN_DONE_CH0_INT_RAW       at 0 range 0 .. 0;
      IN_SUC_EOF_CH0_INT_RAW    at 0 range 1 .. 1;
      IN_ERR_EOF_CH0_INT_RAW    at 0 range 2 .. 2;
      OUT_DONE_CH0_INT_RAW      at 0 range 3 .. 3;
      OUT_EOF_CH0_INT_RAW       at 0 range 4 .. 4;
      IN_DSCR_ERR_CH0_INT_RAW   at 0 range 5 .. 5;
      OUT_DSCR_ERR_CH0_INT_RAW  at 0 range 6 .. 6;
      IN_DSCR_EMPTY_CH0_INT_RAW at 0 range 7 .. 7;
      OUT_TOTAL_EOF_CH0_INT_RAW at 0 range 8 .. 8;
      INFIFO_OVF_CH0_INT_RAW    at 0 range 9 .. 9;
      INFIFO_UDF_CH0_INT_RAW    at 0 range 10 .. 10;
      OUTFIFO_OVF_CH0_INT_RAW   at 0 range 11 .. 11;
      OUTFIFO_UDF_CH0_INT_RAW   at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   --  DMA_INT_ST_CH0_REG.
   type INT_ST_CH0_Register is record
      --  Read-only. The raw interrupt status bit for the IN_DONE_CH_INT
      --  interrupt.
      IN_DONE_CH0_INT_ST       : Boolean;
      --  Read-only. The raw interrupt status bit for the IN_SUC_EOF_CH_INT
      --  interrupt.
      IN_SUC_EOF_CH0_INT_ST    : Boolean;
      --  Read-only. The raw interrupt status bit for the IN_ERR_EOF_CH_INT
      --  interrupt.
      IN_ERR_EOF_CH0_INT_ST    : Boolean;
      --  Read-only. The raw interrupt status bit for the OUT_DONE_CH_INT
      --  interrupt.
      OUT_DONE_CH0_INT_ST      : Boolean;
      --  Read-only. The raw interrupt status bit for the OUT_EOF_CH_INT
      --  interrupt.
      OUT_EOF_CH0_INT_ST       : Boolean;
      --  Read-only. The raw interrupt status bit for the IN_DSCR_ERR_CH_INT
      --  interrupt.
      IN_DSCR_ERR_CH0_INT_ST   : Boolean;
      --  Read-only. The raw interrupt status bit for the OUT_DSCR_ERR_CH_INT
      --  interrupt.
      OUT_DSCR_ERR_CH0_INT_ST  : Boolean;
      --  Read-only. The raw interrupt status bit for the IN_DSCR_EMPTY_CH_INT
      --  interrupt.
      IN_DSCR_EMPTY_CH0_INT_ST : Boolean;
      --  Read-only. The raw interrupt status bit for the OUT_TOTAL_EOF_CH_INT
      --  interrupt.
      OUT_TOTAL_EOF_CH0_INT_ST : Boolean;
      --  Read-only. The raw interrupt status bit for the INFIFO_OVF_L1_CH_INT
      --  interrupt.
      INFIFO_OVF_CH0_INT_ST    : Boolean;
      --  Read-only. The raw interrupt status bit for the INFIFO_UDF_L1_CH_INT
      --  interrupt.
      INFIFO_UDF_CH0_INT_ST    : Boolean;
      --  Read-only. The raw interrupt status bit for the OUTFIFO_OVF_L1_CH_INT
      --  interrupt.
      OUTFIFO_OVF_CH0_INT_ST   : Boolean;
      --  Read-only. The raw interrupt status bit for the OUTFIFO_UDF_L1_CH_INT
      --  interrupt.
      OUTFIFO_UDF_CH0_INT_ST   : Boolean;
      --  unspecified
      Reserved_13_31           : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_CH0_Register use record
      IN_DONE_CH0_INT_ST       at 0 range 0 .. 0;
      IN_SUC_EOF_CH0_INT_ST    at 0 range 1 .. 1;
      IN_ERR_EOF_CH0_INT_ST    at 0 range 2 .. 2;
      OUT_DONE_CH0_INT_ST      at 0 range 3 .. 3;
      OUT_EOF_CH0_INT_ST       at 0 range 4 .. 4;
      IN_DSCR_ERR_CH0_INT_ST   at 0 range 5 .. 5;
      OUT_DSCR_ERR_CH0_INT_ST  at 0 range 6 .. 6;
      IN_DSCR_EMPTY_CH0_INT_ST at 0 range 7 .. 7;
      OUT_TOTAL_EOF_CH0_INT_ST at 0 range 8 .. 8;
      INFIFO_OVF_CH0_INT_ST    at 0 range 9 .. 9;
      INFIFO_UDF_CH0_INT_ST    at 0 range 10 .. 10;
      OUTFIFO_OVF_CH0_INT_ST   at 0 range 11 .. 11;
      OUTFIFO_UDF_CH0_INT_ST   at 0 range 12 .. 12;
      Reserved_13_31           at 0 range 13 .. 31;
   end record;

   --  DMA_INT_ENA_CH0_REG.
   type INT_ENA_CH0_Register is record
      --  The interrupt enable bit for the IN_DONE_CH_INT interrupt.
      IN_DONE_CH0_INT_ENA       : Boolean := False;
      --  The interrupt enable bit for the IN_SUC_EOF_CH_INT interrupt.
      IN_SUC_EOF_CH0_INT_ENA    : Boolean := False;
      --  The interrupt enable bit for the IN_ERR_EOF_CH_INT interrupt.
      IN_ERR_EOF_CH0_INT_ENA    : Boolean := False;
      --  The interrupt enable bit for the OUT_DONE_CH_INT interrupt.
      OUT_DONE_CH0_INT_ENA      : Boolean := False;
      --  The interrupt enable bit for the OUT_EOF_CH_INT interrupt.
      OUT_EOF_CH0_INT_ENA       : Boolean := False;
      --  The interrupt enable bit for the IN_DSCR_ERR_CH_INT interrupt.
      IN_DSCR_ERR_CH0_INT_ENA   : Boolean := False;
      --  The interrupt enable bit for the OUT_DSCR_ERR_CH_INT interrupt.
      OUT_DSCR_ERR_CH0_INT_ENA  : Boolean := False;
      --  The interrupt enable bit for the IN_DSCR_EMPTY_CH_INT interrupt.
      IN_DSCR_EMPTY_CH0_INT_ENA : Boolean := False;
      --  The interrupt enable bit for the OUT_TOTAL_EOF_CH_INT interrupt.
      OUT_TOTAL_EOF_CH0_INT_ENA : Boolean := False;
      --  The interrupt enable bit for the INFIFO_OVF_L1_CH_INT interrupt.
      INFIFO_OVF_CH0_INT_ENA    : Boolean := False;
      --  The interrupt enable bit for the INFIFO_UDF_L1_CH_INT interrupt.
      INFIFO_UDF_CH0_INT_ENA    : Boolean := False;
      --  The interrupt enable bit for the OUTFIFO_OVF_L1_CH_INT interrupt.
      OUTFIFO_OVF_CH0_INT_ENA   : Boolean := False;
      --  The interrupt enable bit for the OUTFIFO_UDF_L1_CH_INT interrupt.
      OUTFIFO_UDF_CH0_INT_ENA   : Boolean := False;
      --  unspecified
      Reserved_13_31            : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_CH0_Register use record
      IN_DONE_CH0_INT_ENA       at 0 range 0 .. 0;
      IN_SUC_EOF_CH0_INT_ENA    at 0 range 1 .. 1;
      IN_ERR_EOF_CH0_INT_ENA    at 0 range 2 .. 2;
      OUT_DONE_CH0_INT_ENA      at 0 range 3 .. 3;
      OUT_EOF_CH0_INT_ENA       at 0 range 4 .. 4;
      IN_DSCR_ERR_CH0_INT_ENA   at 0 range 5 .. 5;
      OUT_DSCR_ERR_CH0_INT_ENA  at 0 range 6 .. 6;
      IN_DSCR_EMPTY_CH0_INT_ENA at 0 range 7 .. 7;
      OUT_TOTAL_EOF_CH0_INT_ENA at 0 range 8 .. 8;
      INFIFO_OVF_CH0_INT_ENA    at 0 range 9 .. 9;
      INFIFO_UDF_CH0_INT_ENA    at 0 range 10 .. 10;
      OUTFIFO_OVF_CH0_INT_ENA   at 0 range 11 .. 11;
      OUTFIFO_UDF_CH0_INT_ENA   at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   --  DMA_INT_CLR_CH0_REG.
   type INT_CLR_CH0_Register is record
      --  Write-only. Set this bit to clear the IN_DONE_CH_INT interrupt.
      IN_DONE_CH0_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear the IN_SUC_EOF_CH_INT interrupt.
      IN_SUC_EOF_CH0_INT_CLR    : Boolean := False;
      --  Write-only. Set this bit to clear the IN_ERR_EOF_CH_INT interrupt.
      IN_ERR_EOF_CH0_INT_CLR    : Boolean := False;
      --  Write-only. Set this bit to clear the OUT_DONE_CH_INT interrupt.
      OUT_DONE_CH0_INT_CLR      : Boolean := False;
      --  Write-only. Set this bit to clear the OUT_EOF_CH_INT interrupt.
      OUT_EOF_CH0_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear the IN_DSCR_ERR_CH_INT interrupt.
      IN_DSCR_ERR_CH0_INT_CLR   : Boolean := False;
      --  Write-only. Set this bit to clear the OUT_DSCR_ERR_CH_INT interrupt.
      OUT_DSCR_ERR_CH0_INT_CLR  : Boolean := False;
      --  Write-only. Set this bit to clear the IN_DSCR_EMPTY_CH_INT interrupt.
      IN_DSCR_EMPTY_CH0_INT_CLR : Boolean := False;
      --  Write-only. Set this bit to clear the OUT_TOTAL_EOF_CH_INT interrupt.
      OUT_TOTAL_EOF_CH0_INT_CLR : Boolean := False;
      --  Write-only. Set this bit to clear the INFIFO_OVF_L1_CH_INT interrupt.
      INFIFO_OVF_CH0_INT_CLR    : Boolean := False;
      --  Write-only. Set this bit to clear the INFIFO_UDF_L1_CH_INT interrupt.
      INFIFO_UDF_CH0_INT_CLR    : Boolean := False;
      --  Write-only. Set this bit to clear the OUTFIFO_OVF_L1_CH_INT
      --  interrupt.
      OUTFIFO_OVF_CH0_INT_CLR   : Boolean := False;
      --  Write-only. Set this bit to clear the OUTFIFO_UDF_L1_CH_INT
      --  interrupt.
      OUTFIFO_UDF_CH0_INT_CLR   : Boolean := False;
      --  unspecified
      Reserved_13_31            : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_CH0_Register use record
      IN_DONE_CH0_INT_CLR       at 0 range 0 .. 0;
      IN_SUC_EOF_CH0_INT_CLR    at 0 range 1 .. 1;
      IN_ERR_EOF_CH0_INT_CLR    at 0 range 2 .. 2;
      OUT_DONE_CH0_INT_CLR      at 0 range 3 .. 3;
      OUT_EOF_CH0_INT_CLR       at 0 range 4 .. 4;
      IN_DSCR_ERR_CH0_INT_CLR   at 0 range 5 .. 5;
      OUT_DSCR_ERR_CH0_INT_CLR  at 0 range 6 .. 6;
      IN_DSCR_EMPTY_CH0_INT_CLR at 0 range 7 .. 7;
      OUT_TOTAL_EOF_CH0_INT_CLR at 0 range 8 .. 8;
      INFIFO_OVF_CH0_INT_CLR    at 0 range 9 .. 9;
      INFIFO_UDF_CH0_INT_CLR    at 0 range 10 .. 10;
      OUTFIFO_OVF_CH0_INT_CLR   at 0 range 11 .. 11;
      OUTFIFO_UDF_CH0_INT_CLR   at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   --  DMA_INT_RAW_CH1_REG.
   type INT_RAW_CH1_Register is record
      --  Read-only. The raw interrupt bit turns to high level when the last
      --  data pointed by one inlink descriptor has been received for Rx
      --  channel 1.
      IN_DONE_CH1_INT_RAW       : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when the last
      --  data pointed by one inlink descriptor has been received for Rx
      --  channel 1. For UHCI0, the raw interrupt bit turns to high level when
      --  the last data pointed by one inlink descriptor has been received and
      --  no data error is detected for Rx channel 1.
      IN_SUC_EOF_CH1_INT_RAW    : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when data error
      --  is detected only in the case that the peripheral is UHCI0 for Rx
      --  channel 1. For other peripherals, this raw interrupt is reserved.
      IN_ERR_EOF_CH1_INT_RAW    : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when the last
      --  data pointed by one outlink descriptor has been transmitted to
      --  peripherals for Tx channel 1.
      OUT_DONE_CH1_INT_RAW      : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when the last
      --  data pointed by one outlink descriptor has been read from memory for
      --  Tx channel 1.
      OUT_EOF_CH1_INT_RAW       : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when detecting
      --  inlink descriptor error, including owner error, the second and third
      --  word error of inlink descriptor for Rx channel 1.
      IN_DSCR_ERR_CH1_INT_RAW   : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when detecting
      --  outlink descriptor error, including owner error, the second and third
      --  word error of outlink descriptor for Tx channel 1.
      OUT_DSCR_ERR_CH1_INT_RAW  : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when Rx buffer
      --  pointed by inlink is full and receiving data is not completed, but
      --  there is no more inlink for Rx channel 1.
      IN_DSCR_EMPTY_CH1_INT_RAW : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when data
      --  corresponding a outlink (includes one link descriptor or few link
      --  descriptors) is transmitted out for Tx channel 1.
      OUT_TOTAL_EOF_CH1_INT_RAW : Boolean;
      --  Read-only. This raw interrupt bit turns to high level when level 1
      --  fifo of Rx channel 1 is overflow.
      INFIFO_OVF_CH1_INT_RAW    : Boolean;
      --  Read-only. This raw interrupt bit turns to high level when level 1
      --  fifo of Rx channel 1 is underflow.
      INFIFO_UDF_CH1_INT_RAW    : Boolean;
      --  Read-only. This raw interrupt bit turns to high level when level 1
      --  fifo of Tx channel 1 is overflow.
      OUTFIFO_OVF_CH1_INT_RAW   : Boolean;
      --  Read-only. This raw interrupt bit turns to high level when level 1
      --  fifo of Tx channel 1 is underflow.
      OUTFIFO_UDF_CH1_INT_RAW   : Boolean;
      --  unspecified
      Reserved_13_31            : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_CH1_Register use record
      IN_DONE_CH1_INT_RAW       at 0 range 0 .. 0;
      IN_SUC_EOF_CH1_INT_RAW    at 0 range 1 .. 1;
      IN_ERR_EOF_CH1_INT_RAW    at 0 range 2 .. 2;
      OUT_DONE_CH1_INT_RAW      at 0 range 3 .. 3;
      OUT_EOF_CH1_INT_RAW       at 0 range 4 .. 4;
      IN_DSCR_ERR_CH1_INT_RAW   at 0 range 5 .. 5;
      OUT_DSCR_ERR_CH1_INT_RAW  at 0 range 6 .. 6;
      IN_DSCR_EMPTY_CH1_INT_RAW at 0 range 7 .. 7;
      OUT_TOTAL_EOF_CH1_INT_RAW at 0 range 8 .. 8;
      INFIFO_OVF_CH1_INT_RAW    at 0 range 9 .. 9;
      INFIFO_UDF_CH1_INT_RAW    at 0 range 10 .. 10;
      OUTFIFO_OVF_CH1_INT_RAW   at 0 range 11 .. 11;
      OUTFIFO_UDF_CH1_INT_RAW   at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   --  DMA_INT_ST_CH1_REG.
   type INT_ST_CH1_Register is record
      --  Read-only. The raw interrupt status bit for the IN_DONE_CH_INT
      --  interrupt.
      IN_DONE_CH1_INT_ST       : Boolean;
      --  Read-only. The raw interrupt status bit for the IN_SUC_EOF_CH_INT
      --  interrupt.
      IN_SUC_EOF_CH1_INT_ST    : Boolean;
      --  Read-only. The raw interrupt status bit for the IN_ERR_EOF_CH_INT
      --  interrupt.
      IN_ERR_EOF_CH1_INT_ST    : Boolean;
      --  Read-only. The raw interrupt status bit for the OUT_DONE_CH_INT
      --  interrupt.
      OUT_DONE_CH1_INT_ST      : Boolean;
      --  Read-only. The raw interrupt status bit for the OUT_EOF_CH_INT
      --  interrupt.
      OUT_EOF_CH1_INT_ST       : Boolean;
      --  Read-only. The raw interrupt status bit for the IN_DSCR_ERR_CH_INT
      --  interrupt.
      IN_DSCR_ERR_CH1_INT_ST   : Boolean;
      --  Read-only. The raw interrupt status bit for the OUT_DSCR_ERR_CH_INT
      --  interrupt.
      OUT_DSCR_ERR_CH1_INT_ST  : Boolean;
      --  Read-only. The raw interrupt status bit for the IN_DSCR_EMPTY_CH_INT
      --  interrupt.
      IN_DSCR_EMPTY_CH1_INT_ST : Boolean;
      --  Read-only. The raw interrupt status bit for the OUT_TOTAL_EOF_CH_INT
      --  interrupt.
      OUT_TOTAL_EOF_CH1_INT_ST : Boolean;
      --  Read-only. The raw interrupt status bit for the INFIFO_OVF_L1_CH_INT
      --  interrupt.
      INFIFO_OVF_CH1_INT_ST    : Boolean;
      --  Read-only. The raw interrupt status bit for the INFIFO_UDF_L1_CH_INT
      --  interrupt.
      INFIFO_UDF_CH1_INT_ST    : Boolean;
      --  Read-only. The raw interrupt status bit for the OUTFIFO_OVF_L1_CH_INT
      --  interrupt.
      OUTFIFO_OVF_CH1_INT_ST   : Boolean;
      --  Read-only. The raw interrupt status bit for the OUTFIFO_UDF_L1_CH_INT
      --  interrupt.
      OUTFIFO_UDF_CH1_INT_ST   : Boolean;
      --  unspecified
      Reserved_13_31           : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_CH1_Register use record
      IN_DONE_CH1_INT_ST       at 0 range 0 .. 0;
      IN_SUC_EOF_CH1_INT_ST    at 0 range 1 .. 1;
      IN_ERR_EOF_CH1_INT_ST    at 0 range 2 .. 2;
      OUT_DONE_CH1_INT_ST      at 0 range 3 .. 3;
      OUT_EOF_CH1_INT_ST       at 0 range 4 .. 4;
      IN_DSCR_ERR_CH1_INT_ST   at 0 range 5 .. 5;
      OUT_DSCR_ERR_CH1_INT_ST  at 0 range 6 .. 6;
      IN_DSCR_EMPTY_CH1_INT_ST at 0 range 7 .. 7;
      OUT_TOTAL_EOF_CH1_INT_ST at 0 range 8 .. 8;
      INFIFO_OVF_CH1_INT_ST    at 0 range 9 .. 9;
      INFIFO_UDF_CH1_INT_ST    at 0 range 10 .. 10;
      OUTFIFO_OVF_CH1_INT_ST   at 0 range 11 .. 11;
      OUTFIFO_UDF_CH1_INT_ST   at 0 range 12 .. 12;
      Reserved_13_31           at 0 range 13 .. 31;
   end record;

   --  DMA_INT_ENA_CH1_REG.
   type INT_ENA_CH1_Register is record
      --  The interrupt enable bit for the IN_DONE_CH_INT interrupt.
      IN_DONE_CH1_INT_ENA       : Boolean := False;
      --  The interrupt enable bit for the IN_SUC_EOF_CH_INT interrupt.
      IN_SUC_EOF_CH1_INT_ENA    : Boolean := False;
      --  The interrupt enable bit for the IN_ERR_EOF_CH_INT interrupt.
      IN_ERR_EOF_CH1_INT_ENA    : Boolean := False;
      --  The interrupt enable bit for the OUT_DONE_CH_INT interrupt.
      OUT_DONE_CH1_INT_ENA      : Boolean := False;
      --  The interrupt enable bit for the OUT_EOF_CH_INT interrupt.
      OUT_EOF_CH1_INT_ENA       : Boolean := False;
      --  The interrupt enable bit for the IN_DSCR_ERR_CH_INT interrupt.
      IN_DSCR_ERR_CH1_INT_ENA   : Boolean := False;
      --  The interrupt enable bit for the OUT_DSCR_ERR_CH_INT interrupt.
      OUT_DSCR_ERR_CH1_INT_ENA  : Boolean := False;
      --  The interrupt enable bit for the IN_DSCR_EMPTY_CH_INT interrupt.
      IN_DSCR_EMPTY_CH1_INT_ENA : Boolean := False;
      --  The interrupt enable bit for the OUT_TOTAL_EOF_CH_INT interrupt.
      OUT_TOTAL_EOF_CH1_INT_ENA : Boolean := False;
      --  The interrupt enable bit for the INFIFO_OVF_L1_CH_INT interrupt.
      INFIFO_OVF_CH1_INT_ENA    : Boolean := False;
      --  The interrupt enable bit for the INFIFO_UDF_L1_CH_INT interrupt.
      INFIFO_UDF_CH1_INT_ENA    : Boolean := False;
      --  The interrupt enable bit for the OUTFIFO_OVF_L1_CH_INT interrupt.
      OUTFIFO_OVF_CH1_INT_ENA   : Boolean := False;
      --  The interrupt enable bit for the OUTFIFO_UDF_L1_CH_INT interrupt.
      OUTFIFO_UDF_CH1_INT_ENA   : Boolean := False;
      --  unspecified
      Reserved_13_31            : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_CH1_Register use record
      IN_DONE_CH1_INT_ENA       at 0 range 0 .. 0;
      IN_SUC_EOF_CH1_INT_ENA    at 0 range 1 .. 1;
      IN_ERR_EOF_CH1_INT_ENA    at 0 range 2 .. 2;
      OUT_DONE_CH1_INT_ENA      at 0 range 3 .. 3;
      OUT_EOF_CH1_INT_ENA       at 0 range 4 .. 4;
      IN_DSCR_ERR_CH1_INT_ENA   at 0 range 5 .. 5;
      OUT_DSCR_ERR_CH1_INT_ENA  at 0 range 6 .. 6;
      IN_DSCR_EMPTY_CH1_INT_ENA at 0 range 7 .. 7;
      OUT_TOTAL_EOF_CH1_INT_ENA at 0 range 8 .. 8;
      INFIFO_OVF_CH1_INT_ENA    at 0 range 9 .. 9;
      INFIFO_UDF_CH1_INT_ENA    at 0 range 10 .. 10;
      OUTFIFO_OVF_CH1_INT_ENA   at 0 range 11 .. 11;
      OUTFIFO_UDF_CH1_INT_ENA   at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   --  DMA_INT_CLR_CH1_REG.
   type INT_CLR_CH1_Register is record
      --  Write-only. Set this bit to clear the IN_DONE_CH_INT interrupt.
      IN_DONE_CH1_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear the IN_SUC_EOF_CH_INT interrupt.
      IN_SUC_EOF_CH1_INT_CLR    : Boolean := False;
      --  Write-only. Set this bit to clear the IN_ERR_EOF_CH_INT interrupt.
      IN_ERR_EOF_CH1_INT_CLR    : Boolean := False;
      --  Write-only. Set this bit to clear the OUT_DONE_CH_INT interrupt.
      OUT_DONE_CH1_INT_CLR      : Boolean := False;
      --  Write-only. Set this bit to clear the OUT_EOF_CH_INT interrupt.
      OUT_EOF_CH1_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear the IN_DSCR_ERR_CH_INT interrupt.
      IN_DSCR_ERR_CH1_INT_CLR   : Boolean := False;
      --  Write-only. Set this bit to clear the OUT_DSCR_ERR_CH_INT interrupt.
      OUT_DSCR_ERR_CH1_INT_CLR  : Boolean := False;
      --  Write-only. Set this bit to clear the IN_DSCR_EMPTY_CH_INT interrupt.
      IN_DSCR_EMPTY_CH1_INT_CLR : Boolean := False;
      --  Write-only. Set this bit to clear the OUT_TOTAL_EOF_CH_INT interrupt.
      OUT_TOTAL_EOF_CH1_INT_CLR : Boolean := False;
      --  Write-only. Set this bit to clear the INFIFO_OVF_L1_CH_INT interrupt.
      INFIFO_OVF_CH1_INT_CLR    : Boolean := False;
      --  Write-only. Set this bit to clear the INFIFO_UDF_L1_CH_INT interrupt.
      INFIFO_UDF_CH1_INT_CLR    : Boolean := False;
      --  Write-only. Set this bit to clear the OUTFIFO_OVF_L1_CH_INT
      --  interrupt.
      OUTFIFO_OVF_CH1_INT_CLR   : Boolean := False;
      --  Write-only. Set this bit to clear the OUTFIFO_UDF_L1_CH_INT
      --  interrupt.
      OUTFIFO_UDF_CH1_INT_CLR   : Boolean := False;
      --  unspecified
      Reserved_13_31            : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_CH1_Register use record
      IN_DONE_CH1_INT_CLR       at 0 range 0 .. 0;
      IN_SUC_EOF_CH1_INT_CLR    at 0 range 1 .. 1;
      IN_ERR_EOF_CH1_INT_CLR    at 0 range 2 .. 2;
      OUT_DONE_CH1_INT_CLR      at 0 range 3 .. 3;
      OUT_EOF_CH1_INT_CLR       at 0 range 4 .. 4;
      IN_DSCR_ERR_CH1_INT_CLR   at 0 range 5 .. 5;
      OUT_DSCR_ERR_CH1_INT_CLR  at 0 range 6 .. 6;
      IN_DSCR_EMPTY_CH1_INT_CLR at 0 range 7 .. 7;
      OUT_TOTAL_EOF_CH1_INT_CLR at 0 range 8 .. 8;
      INFIFO_OVF_CH1_INT_CLR    at 0 range 9 .. 9;
      INFIFO_UDF_CH1_INT_CLR    at 0 range 10 .. 10;
      OUTFIFO_OVF_CH1_INT_CLR   at 0 range 11 .. 11;
      OUTFIFO_UDF_CH1_INT_CLR   at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   --  DMA_INT_RAW_CH2_REG.
   type INT_RAW_CH2_Register is record
      --  Read-only. The raw interrupt bit turns to high level when the last
      --  data pointed by one inlink descriptor has been received for Rx
      --  channel 2.
      IN_DONE_CH2_INT_RAW       : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when the last
      --  data pointed by one inlink descriptor has been received for Rx
      --  channel 2. For UHCI0, the raw interrupt bit turns to high level when
      --  the last data pointed by one inlink descriptor has been received and
      --  no data error is detected for Rx channel 2.
      IN_SUC_EOF_CH2_INT_RAW    : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when data error
      --  is detected only in the case that the peripheral is UHCI0 for Rx
      --  channel 2. For other peripherals, this raw interrupt is reserved.
      IN_ERR_EOF_CH2_INT_RAW    : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when the last
      --  data pointed by one outlink descriptor has been transmitted to
      --  peripherals for Tx channel 2.
      OUT_DONE_CH2_INT_RAW      : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when the last
      --  data pointed by one outlink descriptor has been read from memory for
      --  Tx channel 2.
      OUT_EOF_CH2_INT_RAW       : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when detecting
      --  inlink descriptor error, including owner error, the second and third
      --  word error of inlink descriptor for Rx channel 2.
      IN_DSCR_ERR_CH2_INT_RAW   : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when detecting
      --  outlink descriptor error, including owner error, the second and third
      --  word error of outlink descriptor for Tx channel 2.
      OUT_DSCR_ERR_CH2_INT_RAW  : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when Rx buffer
      --  pointed by inlink is full and receiving data is not completed, but
      --  there is no more inlink for Rx channel 2.
      IN_DSCR_EMPTY_CH2_INT_RAW : Boolean;
      --  Read-only. The raw interrupt bit turns to high level when data
      --  corresponding a outlink (includes one link descriptor or few link
      --  descriptors) is transmitted out for Tx channel 2.
      OUT_TOTAL_EOF_CH2_INT_RAW : Boolean;
      --  Read-only. This raw interrupt bit turns to high level when level 1
      --  fifo of Rx channel 2 is overflow.
      INFIFO_OVF_CH2_INT_RAW    : Boolean;
      --  Read-only. This raw interrupt bit turns to high level when level 1
      --  fifo of Rx channel 2 is underflow.
      INFIFO_UDF_CH2_INT_RAW    : Boolean;
      --  Read-only. This raw interrupt bit turns to high level when level 1
      --  fifo of Tx channel 2 is overflow.
      OUTFIFO_OVF_CH2_INT_RAW   : Boolean;
      --  Read-only. This raw interrupt bit turns to high level when level 1
      --  fifo of Tx channel 2 is underflow.
      OUTFIFO_UDF_CH2_INT_RAW   : Boolean;
      --  unspecified
      Reserved_13_31            : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_CH2_Register use record
      IN_DONE_CH2_INT_RAW       at 0 range 0 .. 0;
      IN_SUC_EOF_CH2_INT_RAW    at 0 range 1 .. 1;
      IN_ERR_EOF_CH2_INT_RAW    at 0 range 2 .. 2;
      OUT_DONE_CH2_INT_RAW      at 0 range 3 .. 3;
      OUT_EOF_CH2_INT_RAW       at 0 range 4 .. 4;
      IN_DSCR_ERR_CH2_INT_RAW   at 0 range 5 .. 5;
      OUT_DSCR_ERR_CH2_INT_RAW  at 0 range 6 .. 6;
      IN_DSCR_EMPTY_CH2_INT_RAW at 0 range 7 .. 7;
      OUT_TOTAL_EOF_CH2_INT_RAW at 0 range 8 .. 8;
      INFIFO_OVF_CH2_INT_RAW    at 0 range 9 .. 9;
      INFIFO_UDF_CH2_INT_RAW    at 0 range 10 .. 10;
      OUTFIFO_OVF_CH2_INT_RAW   at 0 range 11 .. 11;
      OUTFIFO_UDF_CH2_INT_RAW   at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   --  DMA_INT_ST_CH2_REG.
   type INT_ST_CH2_Register is record
      --  Read-only. The raw interrupt status bit for the IN_DONE_CH_INT
      --  interrupt.
      IN_DONE_CH2_INT_ST       : Boolean;
      --  Read-only. The raw interrupt status bit for the IN_SUC_EOF_CH_INT
      --  interrupt.
      IN_SUC_EOF_CH2_INT_ST    : Boolean;
      --  Read-only. The raw interrupt status bit for the IN_ERR_EOF_CH_INT
      --  interrupt.
      IN_ERR_EOF_CH2_INT_ST    : Boolean;
      --  Read-only. The raw interrupt status bit for the OUT_DONE_CH_INT
      --  interrupt.
      OUT_DONE_CH2_INT_ST      : Boolean;
      --  Read-only. The raw interrupt status bit for the OUT_EOF_CH_INT
      --  interrupt.
      OUT_EOF_CH2_INT_ST       : Boolean;
      --  Read-only. The raw interrupt status bit for the IN_DSCR_ERR_CH_INT
      --  interrupt.
      IN_DSCR_ERR_CH2_INT_ST   : Boolean;
      --  Read-only. The raw interrupt status bit for the OUT_DSCR_ERR_CH_INT
      --  interrupt.
      OUT_DSCR_ERR_CH2_INT_ST  : Boolean;
      --  Read-only. The raw interrupt status bit for the IN_DSCR_EMPTY_CH_INT
      --  interrupt.
      IN_DSCR_EMPTY_CH2_INT_ST : Boolean;
      --  Read-only. The raw interrupt status bit for the OUT_TOTAL_EOF_CH_INT
      --  interrupt.
      OUT_TOTAL_EOF_CH2_INT_ST : Boolean;
      --  Read-only. The raw interrupt status bit for the INFIFO_OVF_L1_CH_INT
      --  interrupt.
      INFIFO_OVF_CH2_INT_ST    : Boolean;
      --  Read-only. The raw interrupt status bit for the INFIFO_UDF_L1_CH_INT
      --  interrupt.
      INFIFO_UDF_CH2_INT_ST    : Boolean;
      --  Read-only. The raw interrupt status bit for the OUTFIFO_OVF_L1_CH_INT
      --  interrupt.
      OUTFIFO_OVF_CH2_INT_ST   : Boolean;
      --  Read-only. The raw interrupt status bit for the OUTFIFO_UDF_L1_CH_INT
      --  interrupt.
      OUTFIFO_UDF_CH2_INT_ST   : Boolean;
      --  unspecified
      Reserved_13_31           : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_CH2_Register use record
      IN_DONE_CH2_INT_ST       at 0 range 0 .. 0;
      IN_SUC_EOF_CH2_INT_ST    at 0 range 1 .. 1;
      IN_ERR_EOF_CH2_INT_ST    at 0 range 2 .. 2;
      OUT_DONE_CH2_INT_ST      at 0 range 3 .. 3;
      OUT_EOF_CH2_INT_ST       at 0 range 4 .. 4;
      IN_DSCR_ERR_CH2_INT_ST   at 0 range 5 .. 5;
      OUT_DSCR_ERR_CH2_INT_ST  at 0 range 6 .. 6;
      IN_DSCR_EMPTY_CH2_INT_ST at 0 range 7 .. 7;
      OUT_TOTAL_EOF_CH2_INT_ST at 0 range 8 .. 8;
      INFIFO_OVF_CH2_INT_ST    at 0 range 9 .. 9;
      INFIFO_UDF_CH2_INT_ST    at 0 range 10 .. 10;
      OUTFIFO_OVF_CH2_INT_ST   at 0 range 11 .. 11;
      OUTFIFO_UDF_CH2_INT_ST   at 0 range 12 .. 12;
      Reserved_13_31           at 0 range 13 .. 31;
   end record;

   --  DMA_INT_ENA_CH2_REG.
   type INT_ENA_CH2_Register is record
      --  The interrupt enable bit for the IN_DONE_CH_INT interrupt.
      IN_DONE_CH2_INT_ENA       : Boolean := False;
      --  The interrupt enable bit for the IN_SUC_EOF_CH_INT interrupt.
      IN_SUC_EOF_CH2_INT_ENA    : Boolean := False;
      --  The interrupt enable bit for the IN_ERR_EOF_CH_INT interrupt.
      IN_ERR_EOF_CH2_INT_ENA    : Boolean := False;
      --  The interrupt enable bit for the OUT_DONE_CH_INT interrupt.
      OUT_DONE_CH2_INT_ENA      : Boolean := False;
      --  The interrupt enable bit for the OUT_EOF_CH_INT interrupt.
      OUT_EOF_CH2_INT_ENA       : Boolean := False;
      --  The interrupt enable bit for the IN_DSCR_ERR_CH_INT interrupt.
      IN_DSCR_ERR_CH2_INT_ENA   : Boolean := False;
      --  The interrupt enable bit for the OUT_DSCR_ERR_CH_INT interrupt.
      OUT_DSCR_ERR_CH2_INT_ENA  : Boolean := False;
      --  The interrupt enable bit for the IN_DSCR_EMPTY_CH_INT interrupt.
      IN_DSCR_EMPTY_CH2_INT_ENA : Boolean := False;
      --  The interrupt enable bit for the OUT_TOTAL_EOF_CH_INT interrupt.
      OUT_TOTAL_EOF_CH2_INT_ENA : Boolean := False;
      --  The interrupt enable bit for the INFIFO_OVF_L1_CH_INT interrupt.
      INFIFO_OVF_CH2_INT_ENA    : Boolean := False;
      --  The interrupt enable bit for the INFIFO_UDF_L1_CH_INT interrupt.
      INFIFO_UDF_CH2_INT_ENA    : Boolean := False;
      --  The interrupt enable bit for the OUTFIFO_OVF_L1_CH_INT interrupt.
      OUTFIFO_OVF_CH2_INT_ENA   : Boolean := False;
      --  The interrupt enable bit for the OUTFIFO_UDF_L1_CH_INT interrupt.
      OUTFIFO_UDF_CH2_INT_ENA   : Boolean := False;
      --  unspecified
      Reserved_13_31            : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_CH2_Register use record
      IN_DONE_CH2_INT_ENA       at 0 range 0 .. 0;
      IN_SUC_EOF_CH2_INT_ENA    at 0 range 1 .. 1;
      IN_ERR_EOF_CH2_INT_ENA    at 0 range 2 .. 2;
      OUT_DONE_CH2_INT_ENA      at 0 range 3 .. 3;
      OUT_EOF_CH2_INT_ENA       at 0 range 4 .. 4;
      IN_DSCR_ERR_CH2_INT_ENA   at 0 range 5 .. 5;
      OUT_DSCR_ERR_CH2_INT_ENA  at 0 range 6 .. 6;
      IN_DSCR_EMPTY_CH2_INT_ENA at 0 range 7 .. 7;
      OUT_TOTAL_EOF_CH2_INT_ENA at 0 range 8 .. 8;
      INFIFO_OVF_CH2_INT_ENA    at 0 range 9 .. 9;
      INFIFO_UDF_CH2_INT_ENA    at 0 range 10 .. 10;
      OUTFIFO_OVF_CH2_INT_ENA   at 0 range 11 .. 11;
      OUTFIFO_UDF_CH2_INT_ENA   at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   --  DMA_INT_CLR_CH2_REG.
   type INT_CLR_CH2_Register is record
      --  Write-only. Set this bit to clear the IN_DONE_CH_INT interrupt.
      IN_DONE_CH2_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear the IN_SUC_EOF_CH_INT interrupt.
      IN_SUC_EOF_CH2_INT_CLR    : Boolean := False;
      --  Write-only. Set this bit to clear the IN_ERR_EOF_CH_INT interrupt.
      IN_ERR_EOF_CH2_INT_CLR    : Boolean := False;
      --  Write-only. Set this bit to clear the OUT_DONE_CH_INT interrupt.
      OUT_DONE_CH2_INT_CLR      : Boolean := False;
      --  Write-only. Set this bit to clear the OUT_EOF_CH_INT interrupt.
      OUT_EOF_CH2_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear the IN_DSCR_ERR_CH_INT interrupt.
      IN_DSCR_ERR_CH2_INT_CLR   : Boolean := False;
      --  Write-only. Set this bit to clear the OUT_DSCR_ERR_CH_INT interrupt.
      OUT_DSCR_ERR_CH2_INT_CLR  : Boolean := False;
      --  Write-only. Set this bit to clear the IN_DSCR_EMPTY_CH_INT interrupt.
      IN_DSCR_EMPTY_CH2_INT_CLR : Boolean := False;
      --  Write-only. Set this bit to clear the OUT_TOTAL_EOF_CH_INT interrupt.
      OUT_TOTAL_EOF_CH2_INT_CLR : Boolean := False;
      --  Write-only. Set this bit to clear the INFIFO_OVF_L1_CH_INT interrupt.
      INFIFO_OVF_CH2_INT_CLR    : Boolean := False;
      --  Write-only. Set this bit to clear the INFIFO_UDF_L1_CH_INT interrupt.
      INFIFO_UDF_CH2_INT_CLR    : Boolean := False;
      --  Write-only. Set this bit to clear the OUTFIFO_OVF_L1_CH_INT
      --  interrupt.
      OUTFIFO_OVF_CH2_INT_CLR   : Boolean := False;
      --  Write-only. Set this bit to clear the OUTFIFO_UDF_L1_CH_INT
      --  interrupt.
      OUTFIFO_UDF_CH2_INT_CLR   : Boolean := False;
      --  unspecified
      Reserved_13_31            : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_CH2_Register use record
      IN_DONE_CH2_INT_CLR       at 0 range 0 .. 0;
      IN_SUC_EOF_CH2_INT_CLR    at 0 range 1 .. 1;
      IN_ERR_EOF_CH2_INT_CLR    at 0 range 2 .. 2;
      OUT_DONE_CH2_INT_CLR      at 0 range 3 .. 3;
      OUT_EOF_CH2_INT_CLR       at 0 range 4 .. 4;
      IN_DSCR_ERR_CH2_INT_CLR   at 0 range 5 .. 5;
      OUT_DSCR_ERR_CH2_INT_CLR  at 0 range 6 .. 6;
      IN_DSCR_EMPTY_CH2_INT_CLR at 0 range 7 .. 7;
      OUT_TOTAL_EOF_CH2_INT_CLR at 0 range 8 .. 8;
      INFIFO_OVF_CH2_INT_CLR    at 0 range 9 .. 9;
      INFIFO_UDF_CH2_INT_CLR    at 0 range 10 .. 10;
      OUTFIFO_OVF_CH2_INT_CLR   at 0 range 11 .. 11;
      OUTFIFO_UDF_CH2_INT_CLR   at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   subtype AHB_TEST_AHB_TESTMODE_Field is HAL.UInt3;
   subtype AHB_TEST_AHB_TESTADDR_Field is HAL.UInt2;

   --  DMA_AHB_TEST_REG.
   type AHB_TEST_Register is record
      --  reserved
      AHB_TESTMODE  : AHB_TEST_AHB_TESTMODE_Field := 16#0#;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  reserved
      AHB_TESTADDR  : AHB_TEST_AHB_TESTADDR_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB_TEST_Register use record
      AHB_TESTMODE  at 0 range 0 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      AHB_TESTADDR  at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  DMA_MISC_CONF_REG.
   type MISC_CONF_Register is record
      --  Set this bit, then clear this bit to reset the internal ahb FSM.
      AHBM_RST_INTER : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Set this bit to disable priority arbitration function.
      ARB_PRI_DIS    : Boolean := False;
      --  reg_clk_en
      CLK_EN         : Boolean := False;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MISC_CONF_Register use record
      AHBM_RST_INTER at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      ARB_PRI_DIS    at 0 range 2 .. 2;
      CLK_EN         at 0 range 3 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   --  DMA_IN_CONF0_CH0_REG.
   type IN_CONF0_CH0_Register is record
      --  This bit is used to reset DMA channel 0 Rx FSM and Rx FIFO pointer.
      IN_RST_CH0           : Boolean := False;
      --  reserved
      IN_LOOP_TEST_CH0     : Boolean := False;
      --  Set this bit to 1 to enable INCR burst transfer for Rx channel 0
      --  reading link descriptor when accessing internal SRAM.
      INDSCR_BURST_EN_CH0  : Boolean := False;
      --  Set this bit to 1 to enable INCR burst transfer for Rx channel 0
      --  receiving data when accessing internal SRAM.
      IN_DATA_BURST_EN_CH0 : Boolean := False;
      --  Set this bit 1 to enable automatic transmitting data from memory to
      --  memory via DMA.
      MEM_TRANS_EN_CH0     : Boolean := False;
      --  unspecified
      Reserved_5_31        : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_CONF0_CH0_Register use record
      IN_RST_CH0           at 0 range 0 .. 0;
      IN_LOOP_TEST_CH0     at 0 range 1 .. 1;
      INDSCR_BURST_EN_CH0  at 0 range 2 .. 2;
      IN_DATA_BURST_EN_CH0 at 0 range 3 .. 3;
      MEM_TRANS_EN_CH0     at 0 range 4 .. 4;
      Reserved_5_31        at 0 range 5 .. 31;
   end record;

   --  DMA_IN_CONF1_CH0_REG.
   type IN_CONF1_CH0_Register is record
      --  unspecified
      Reserved_0_11      : HAL.UInt12 := 16#0#;
      --  Set this bit to enable checking the owner attribute of the link
      --  descriptor.
      IN_CHECK_OWNER_CH0 : Boolean := False;
      --  unspecified
      Reserved_13_31     : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_CONF1_CH0_Register use record
      Reserved_0_11      at 0 range 0 .. 11;
      IN_CHECK_OWNER_CH0 at 0 range 12 .. 12;
      Reserved_13_31     at 0 range 13 .. 31;
   end record;

   subtype INFIFO_STATUS_CH0_INFIFO_CNT_CH0_Field is HAL.UInt6;

   --  DMA_INFIFO_STATUS_CH0_REG.
   type INFIFO_STATUS_CH0_Register is record
      --  Read-only. L1 Rx FIFO full signal for Rx channel 0.
      INFIFO_FULL_CH0        : Boolean;
      --  Read-only. L1 Rx FIFO empty signal for Rx channel 0.
      INFIFO_EMPTY_CH0       : Boolean;
      --  Read-only. The register stores the byte number of the data in L1 Rx
      --  FIFO for Rx channel 0.
      INFIFO_CNT_CH0         : INFIFO_STATUS_CH0_INFIFO_CNT_CH0_Field;
      --  unspecified
      Reserved_8_22          : HAL.UInt15;
      --  Read-only. reserved
      IN_REMAIN_UNDER_1B_CH0 : Boolean;
      --  Read-only. reserved
      IN_REMAIN_UNDER_2B_CH0 : Boolean;
      --  Read-only. reserved
      IN_REMAIN_UNDER_3B_CH0 : Boolean;
      --  Read-only. reserved
      IN_REMAIN_UNDER_4B_CH0 : Boolean;
      --  Read-only. reserved
      IN_BUF_HUNGRY_CH0      : Boolean;
      --  unspecified
      Reserved_28_31         : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INFIFO_STATUS_CH0_Register use record
      INFIFO_FULL_CH0        at 0 range 0 .. 0;
      INFIFO_EMPTY_CH0       at 0 range 1 .. 1;
      INFIFO_CNT_CH0         at 0 range 2 .. 7;
      Reserved_8_22          at 0 range 8 .. 22;
      IN_REMAIN_UNDER_1B_CH0 at 0 range 23 .. 23;
      IN_REMAIN_UNDER_2B_CH0 at 0 range 24 .. 24;
      IN_REMAIN_UNDER_3B_CH0 at 0 range 25 .. 25;
      IN_REMAIN_UNDER_4B_CH0 at 0 range 26 .. 26;
      IN_BUF_HUNGRY_CH0      at 0 range 27 .. 27;
      Reserved_28_31         at 0 range 28 .. 31;
   end record;

   subtype IN_POP_CH0_INFIFO_RDATA_CH0_Field is HAL.UInt12;

   --  DMA_IN_POP_CH0_REG.
   type IN_POP_CH0_Register is record
      --  Read-only. This register stores the data popping from DMA FIFO.
      INFIFO_RDATA_CH0 : IN_POP_CH0_INFIFO_RDATA_CH0_Field := 16#800#;
      --  Set this bit to pop data from DMA FIFO.
      INFIFO_POP_CH0   : Boolean := False;
      --  unspecified
      Reserved_13_31   : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_POP_CH0_Register use record
      INFIFO_RDATA_CH0 at 0 range 0 .. 11;
      INFIFO_POP_CH0   at 0 range 12 .. 12;
      Reserved_13_31   at 0 range 13 .. 31;
   end record;

   subtype IN_LINK_CH0_INLINK_ADDR_CH0_Field is HAL.UInt20;

   --  DMA_IN_LINK_CH0_REG.
   type IN_LINK_CH0_Register is record
      --  This register stores the 20 least significant bits of the first
      --  inlink descriptor's address.
      INLINK_ADDR_CH0     : IN_LINK_CH0_INLINK_ADDR_CH0_Field := 16#0#;
      --  Set this bit to return to current inlink descriptor's address, when
      --  there are some errors in current receiving data.
      INLINK_AUTO_RET_CH0 : Boolean := True;
      --  Set this bit to stop dealing with the inlink descriptors.
      INLINK_STOP_CH0     : Boolean := False;
      --  Set this bit to start dealing with the inlink descriptors.
      INLINK_START_CH0    : Boolean := False;
      --  Set this bit to mount a new inlink descriptor.
      INLINK_RESTART_CH0  : Boolean := False;
      --  Read-only. 1: the inlink descriptor's FSM is in idle state. 0: the
      --  inlink descriptor's FSM is working.
      INLINK_PARK_CH0     : Boolean := True;
      --  unspecified
      Reserved_25_31      : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_LINK_CH0_Register use record
      INLINK_ADDR_CH0     at 0 range 0 .. 19;
      INLINK_AUTO_RET_CH0 at 0 range 20 .. 20;
      INLINK_STOP_CH0     at 0 range 21 .. 21;
      INLINK_START_CH0    at 0 range 22 .. 22;
      INLINK_RESTART_CH0  at 0 range 23 .. 23;
      INLINK_PARK_CH0     at 0 range 24 .. 24;
      Reserved_25_31      at 0 range 25 .. 31;
   end record;

   subtype IN_STATE_CH0_INLINK_DSCR_ADDR_CH0_Field is HAL.UInt18;
   subtype IN_STATE_CH0_IN_DSCR_STATE_CH0_Field is HAL.UInt2;
   subtype IN_STATE_CH0_IN_STATE_CH0_Field is HAL.UInt3;

   --  DMA_IN_STATE_CH0_REG.
   type IN_STATE_CH0_Register is record
      --  Read-only. This register stores the current inlink descriptor's
      --  address.
      INLINK_DSCR_ADDR_CH0 : IN_STATE_CH0_INLINK_DSCR_ADDR_CH0_Field;
      --  Read-only. reserved
      IN_DSCR_STATE_CH0    : IN_STATE_CH0_IN_DSCR_STATE_CH0_Field;
      --  Read-only. reserved
      IN_STATE_CH0         : IN_STATE_CH0_IN_STATE_CH0_Field;
      --  unspecified
      Reserved_23_31       : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_STATE_CH0_Register use record
      INLINK_DSCR_ADDR_CH0 at 0 range 0 .. 17;
      IN_DSCR_STATE_CH0    at 0 range 18 .. 19;
      IN_STATE_CH0         at 0 range 20 .. 22;
      Reserved_23_31       at 0 range 23 .. 31;
   end record;

   subtype IN_PRI_CH0_RX_PRI_CH0_Field is HAL.UInt4;

   --  DMA_IN_PRI_CH0_REG.
   type IN_PRI_CH0_Register is record
      --  The priority of Rx channel 0. The larger of the value, the higher of
      --  the priority.
      RX_PRI_CH0    : IN_PRI_CH0_RX_PRI_CH0_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_PRI_CH0_Register use record
      RX_PRI_CH0    at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype IN_PERI_SEL_CH0_PERI_IN_SEL_CH0_Field is HAL.UInt6;

   --  DMA_IN_PERI_SEL_CH0_REG.
   type IN_PERI_SEL_CH0_Register is record
      --  This register is used to select peripheral for Rx channel 0. 0:SPI2.
      --  1: reserved. 2: UHCI0. 3: I2S0. 4: reserved. 5: reserved. 6: AES. 7:
      --  SHA. 8: ADC_DAC.
      PERI_IN_SEL_CH0 : IN_PERI_SEL_CH0_PERI_IN_SEL_CH0_Field := 16#3F#;
      --  unspecified
      Reserved_6_31   : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_PERI_SEL_CH0_Register use record
      PERI_IN_SEL_CH0 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   --  DMA_OUT_CONF0_CH0_REG.
   type OUT_CONF0_CH0_Register is record
      --  This bit is used to reset DMA channel 0 Tx FSM and Tx FIFO pointer.
      OUT_RST_CH0           : Boolean := False;
      --  reserved
      OUT_LOOP_TEST_CH0     : Boolean := False;
      --  Set this bit to enable automatic outlink-writeback when all the data
      --  in tx buffer has been transmitted.
      OUT_AUTO_WRBACK_CH0   : Boolean := False;
      --  EOF flag generation mode when transmitting data. 1: EOF flag for Tx
      --  channel 0 is generated when data need to transmit has been popped
      --  from FIFO in DMA
      OUT_EOF_MODE_CH0      : Boolean := True;
      --  Set this bit to 1 to enable INCR burst transfer for Tx channel 0
      --  reading link descriptor when accessing internal SRAM.
      OUTDSCR_BURST_EN_CH0  : Boolean := False;
      --  Set this bit to 1 to enable INCR burst transfer for Tx channel 0
      --  transmitting data when accessing internal SRAM.
      OUT_DATA_BURST_EN_CH0 : Boolean := False;
      --  unspecified
      Reserved_6_31         : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_CONF0_CH0_Register use record
      OUT_RST_CH0           at 0 range 0 .. 0;
      OUT_LOOP_TEST_CH0     at 0 range 1 .. 1;
      OUT_AUTO_WRBACK_CH0   at 0 range 2 .. 2;
      OUT_EOF_MODE_CH0      at 0 range 3 .. 3;
      OUTDSCR_BURST_EN_CH0  at 0 range 4 .. 4;
      OUT_DATA_BURST_EN_CH0 at 0 range 5 .. 5;
      Reserved_6_31         at 0 range 6 .. 31;
   end record;

   --  DMA_OUT_CONF1_CH0_REG.
   type OUT_CONF1_CH0_Register is record
      --  unspecified
      Reserved_0_11       : HAL.UInt12 := 16#0#;
      --  Set this bit to enable checking the owner attribute of the link
      --  descriptor.
      OUT_CHECK_OWNER_CH0 : Boolean := False;
      --  unspecified
      Reserved_13_31      : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_CONF1_CH0_Register use record
      Reserved_0_11       at 0 range 0 .. 11;
      OUT_CHECK_OWNER_CH0 at 0 range 12 .. 12;
      Reserved_13_31      at 0 range 13 .. 31;
   end record;

   subtype OUTFIFO_STATUS_CH0_OUTFIFO_CNT_CH0_Field is HAL.UInt6;

   --  DMA_OUTFIFO_STATUS_CH0_REG.
   type OUTFIFO_STATUS_CH0_Register is record
      --  Read-only. L1 Tx FIFO full signal for Tx channel 0.
      OUTFIFO_FULL_CH0        : Boolean;
      --  Read-only. L1 Tx FIFO empty signal for Tx channel 0.
      OUTFIFO_EMPTY_CH0       : Boolean;
      --  Read-only. The register stores the byte number of the data in L1 Tx
      --  FIFO for Tx channel 0.
      OUTFIFO_CNT_CH0         : OUTFIFO_STATUS_CH0_OUTFIFO_CNT_CH0_Field;
      --  unspecified
      Reserved_8_22           : HAL.UInt15;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_1B_CH0 : Boolean;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_2B_CH0 : Boolean;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_3B_CH0 : Boolean;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_4B_CH0 : Boolean;
      --  unspecified
      Reserved_27_31          : HAL.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUTFIFO_STATUS_CH0_Register use record
      OUTFIFO_FULL_CH0        at 0 range 0 .. 0;
      OUTFIFO_EMPTY_CH0       at 0 range 1 .. 1;
      OUTFIFO_CNT_CH0         at 0 range 2 .. 7;
      Reserved_8_22           at 0 range 8 .. 22;
      OUT_REMAIN_UNDER_1B_CH0 at 0 range 23 .. 23;
      OUT_REMAIN_UNDER_2B_CH0 at 0 range 24 .. 24;
      OUT_REMAIN_UNDER_3B_CH0 at 0 range 25 .. 25;
      OUT_REMAIN_UNDER_4B_CH0 at 0 range 26 .. 26;
      Reserved_27_31          at 0 range 27 .. 31;
   end record;

   subtype OUT_PUSH_CH0_OUTFIFO_WDATA_CH0_Field is HAL.UInt9;

   --  DMA_OUT_PUSH_CH0_REG.
   type OUT_PUSH_CH0_Register is record
      --  This register stores the data that need to be pushed into DMA FIFO.
      OUTFIFO_WDATA_CH0 : OUT_PUSH_CH0_OUTFIFO_WDATA_CH0_Field := 16#0#;
      --  Set this bit to push data into DMA FIFO.
      OUTFIFO_PUSH_CH0  : Boolean := False;
      --  unspecified
      Reserved_10_31    : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_PUSH_CH0_Register use record
      OUTFIFO_WDATA_CH0 at 0 range 0 .. 8;
      OUTFIFO_PUSH_CH0  at 0 range 9 .. 9;
      Reserved_10_31    at 0 range 10 .. 31;
   end record;

   subtype OUT_LINK_CH0_OUTLINK_ADDR_CH0_Field is HAL.UInt20;

   --  DMA_OUT_LINK_CH0_REG.
   type OUT_LINK_CH0_Register is record
      --  This register stores the 20 least significant bits of the first
      --  outlink descriptor's address.
      OUTLINK_ADDR_CH0    : OUT_LINK_CH0_OUTLINK_ADDR_CH0_Field := 16#0#;
      --  Set this bit to stop dealing with the outlink descriptors.
      OUTLINK_STOP_CH0    : Boolean := False;
      --  Set this bit to start dealing with the outlink descriptors.
      OUTLINK_START_CH0   : Boolean := False;
      --  Set this bit to restart a new outlink from the last address.
      OUTLINK_RESTART_CH0 : Boolean := False;
      --  Read-only. 1: the outlink descriptor's FSM is in idle state. 0: the
      --  outlink descriptor's FSM is working.
      OUTLINK_PARK_CH0    : Boolean := True;
      --  unspecified
      Reserved_24_31      : HAL.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_LINK_CH0_Register use record
      OUTLINK_ADDR_CH0    at 0 range 0 .. 19;
      OUTLINK_STOP_CH0    at 0 range 20 .. 20;
      OUTLINK_START_CH0   at 0 range 21 .. 21;
      OUTLINK_RESTART_CH0 at 0 range 22 .. 22;
      OUTLINK_PARK_CH0    at 0 range 23 .. 23;
      Reserved_24_31      at 0 range 24 .. 31;
   end record;

   subtype OUT_STATE_CH0_OUTLINK_DSCR_ADDR_CH0_Field is HAL.UInt18;
   subtype OUT_STATE_CH0_OUT_DSCR_STATE_CH0_Field is HAL.UInt2;
   subtype OUT_STATE_CH0_OUT_STATE_CH0_Field is HAL.UInt3;

   --  DMA_OUT_STATE_CH0_REG.
   type OUT_STATE_CH0_Register is record
      --  Read-only. This register stores the current outlink descriptor's
      --  address.
      OUTLINK_DSCR_ADDR_CH0 : OUT_STATE_CH0_OUTLINK_DSCR_ADDR_CH0_Field;
      --  Read-only. reserved
      OUT_DSCR_STATE_CH0    : OUT_STATE_CH0_OUT_DSCR_STATE_CH0_Field;
      --  Read-only. reserved
      OUT_STATE_CH0         : OUT_STATE_CH0_OUT_STATE_CH0_Field;
      --  unspecified
      Reserved_23_31        : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_STATE_CH0_Register use record
      OUTLINK_DSCR_ADDR_CH0 at 0 range 0 .. 17;
      OUT_DSCR_STATE_CH0    at 0 range 18 .. 19;
      OUT_STATE_CH0         at 0 range 20 .. 22;
      Reserved_23_31        at 0 range 23 .. 31;
   end record;

   subtype OUT_PRI_CH0_TX_PRI_CH0_Field is HAL.UInt4;

   --  DMA_OUT_PRI_CH0_REG.
   type OUT_PRI_CH0_Register is record
      --  The priority of Tx channel 0. The larger of the value, the higher of
      --  the priority.
      TX_PRI_CH0    : OUT_PRI_CH0_TX_PRI_CH0_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_PRI_CH0_Register use record
      TX_PRI_CH0    at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype OUT_PERI_SEL_CH0_PERI_OUT_SEL_CH0_Field is HAL.UInt6;

   --  DMA_OUT_PERI_SEL_CH0_REG.
   type OUT_PERI_SEL_CH0_Register is record
      --  This register is used to select peripheral for Tx channel 0. 0:SPI2.
      --  1: reserved. 2: UHCI0. 3: I2S0. 4: reserved. 5: reserved. 6: AES. 7:
      --  SHA. 8: ADC_DAC.
      PERI_OUT_SEL_CH0 : OUT_PERI_SEL_CH0_PERI_OUT_SEL_CH0_Field := 16#3F#;
      --  unspecified
      Reserved_6_31    : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_PERI_SEL_CH0_Register use record
      PERI_OUT_SEL_CH0 at 0 range 0 .. 5;
      Reserved_6_31    at 0 range 6 .. 31;
   end record;

   --  DMA_IN_CONF0_CH1_REG.
   type IN_CONF0_CH1_Register is record
      --  This bit is used to reset DMA channel 1 Rx FSM and Rx FIFO pointer.
      IN_RST_CH1           : Boolean := False;
      --  reserved
      IN_LOOP_TEST_CH1     : Boolean := False;
      --  Set this bit to 1 to enable INCR burst transfer for Rx channel 1
      --  reading link descriptor when accessing internal SRAM.
      INDSCR_BURST_EN_CH1  : Boolean := False;
      --  Set this bit to 1 to enable INCR burst transfer for Rx channel 1
      --  receiving data when accessing internal SRAM.
      IN_DATA_BURST_EN_CH1 : Boolean := False;
      --  Set this bit 1 to enable automatic transmitting data from memory to
      --  memory via DMA.
      MEM_TRANS_EN_CH1     : Boolean := False;
      --  unspecified
      Reserved_5_31        : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_CONF0_CH1_Register use record
      IN_RST_CH1           at 0 range 0 .. 0;
      IN_LOOP_TEST_CH1     at 0 range 1 .. 1;
      INDSCR_BURST_EN_CH1  at 0 range 2 .. 2;
      IN_DATA_BURST_EN_CH1 at 0 range 3 .. 3;
      MEM_TRANS_EN_CH1     at 0 range 4 .. 4;
      Reserved_5_31        at 0 range 5 .. 31;
   end record;

   --  DMA_IN_CONF1_CH1_REG.
   type IN_CONF1_CH1_Register is record
      --  unspecified
      Reserved_0_11      : HAL.UInt12 := 16#0#;
      --  Set this bit to enable checking the owner attribute of the link
      --  descriptor.
      IN_CHECK_OWNER_CH1 : Boolean := False;
      --  unspecified
      Reserved_13_31     : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_CONF1_CH1_Register use record
      Reserved_0_11      at 0 range 0 .. 11;
      IN_CHECK_OWNER_CH1 at 0 range 12 .. 12;
      Reserved_13_31     at 0 range 13 .. 31;
   end record;

   subtype INFIFO_STATUS_CH1_INFIFO_CNT_CH1_Field is HAL.UInt6;

   --  DMA_INFIFO_STATUS_CH1_REG.
   type INFIFO_STATUS_CH1_Register is record
      --  Read-only. L1 Rx FIFO full signal for Rx channel 1.
      INFIFO_FULL_CH1        : Boolean;
      --  Read-only. L1 Rx FIFO empty signal for Rx channel 1.
      INFIFO_EMPTY_CH1       : Boolean;
      --  Read-only. The register stores the byte number of the data in L1 Rx
      --  FIFO for Rx channel 1.
      INFIFO_CNT_CH1         : INFIFO_STATUS_CH1_INFIFO_CNT_CH1_Field;
      --  unspecified
      Reserved_8_22          : HAL.UInt15;
      --  Read-only. reserved
      IN_REMAIN_UNDER_1B_CH1 : Boolean;
      --  Read-only. reserved
      IN_REMAIN_UNDER_2B_CH1 : Boolean;
      --  Read-only. reserved
      IN_REMAIN_UNDER_3B_CH1 : Boolean;
      --  Read-only. reserved
      IN_REMAIN_UNDER_4B_CH1 : Boolean;
      --  Read-only. reserved
      IN_BUF_HUNGRY_CH1      : Boolean;
      --  unspecified
      Reserved_28_31         : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INFIFO_STATUS_CH1_Register use record
      INFIFO_FULL_CH1        at 0 range 0 .. 0;
      INFIFO_EMPTY_CH1       at 0 range 1 .. 1;
      INFIFO_CNT_CH1         at 0 range 2 .. 7;
      Reserved_8_22          at 0 range 8 .. 22;
      IN_REMAIN_UNDER_1B_CH1 at 0 range 23 .. 23;
      IN_REMAIN_UNDER_2B_CH1 at 0 range 24 .. 24;
      IN_REMAIN_UNDER_3B_CH1 at 0 range 25 .. 25;
      IN_REMAIN_UNDER_4B_CH1 at 0 range 26 .. 26;
      IN_BUF_HUNGRY_CH1      at 0 range 27 .. 27;
      Reserved_28_31         at 0 range 28 .. 31;
   end record;

   subtype IN_POP_CH1_INFIFO_RDATA_CH1_Field is HAL.UInt12;

   --  DMA_IN_POP_CH1_REG.
   type IN_POP_CH1_Register is record
      --  Read-only. This register stores the data popping from DMA FIFO.
      INFIFO_RDATA_CH1 : IN_POP_CH1_INFIFO_RDATA_CH1_Field := 16#800#;
      --  Set this bit to pop data from DMA FIFO.
      INFIFO_POP_CH1   : Boolean := False;
      --  unspecified
      Reserved_13_31   : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_POP_CH1_Register use record
      INFIFO_RDATA_CH1 at 0 range 0 .. 11;
      INFIFO_POP_CH1   at 0 range 12 .. 12;
      Reserved_13_31   at 0 range 13 .. 31;
   end record;

   subtype IN_LINK_CH1_INLINK_ADDR_CH1_Field is HAL.UInt20;

   --  DMA_IN_LINK_CH1_REG.
   type IN_LINK_CH1_Register is record
      --  This register stores the 20 least significant bits of the first
      --  inlink descriptor's address.
      INLINK_ADDR_CH1     : IN_LINK_CH1_INLINK_ADDR_CH1_Field := 16#0#;
      --  Set this bit to return to current inlink descriptor's address, when
      --  there are some errors in current receiving data.
      INLINK_AUTO_RET_CH1 : Boolean := True;
      --  Set this bit to stop dealing with the inlink descriptors.
      INLINK_STOP_CH1     : Boolean := False;
      --  Set this bit to start dealing with the inlink descriptors.
      INLINK_START_CH1    : Boolean := False;
      --  Set this bit to mount a new inlink descriptor.
      INLINK_RESTART_CH1  : Boolean := False;
      --  Read-only. 1: the inlink descriptor's FSM is in idle state. 0: the
      --  inlink descriptor's FSM is working.
      INLINK_PARK_CH1     : Boolean := True;
      --  unspecified
      Reserved_25_31      : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_LINK_CH1_Register use record
      INLINK_ADDR_CH1     at 0 range 0 .. 19;
      INLINK_AUTO_RET_CH1 at 0 range 20 .. 20;
      INLINK_STOP_CH1     at 0 range 21 .. 21;
      INLINK_START_CH1    at 0 range 22 .. 22;
      INLINK_RESTART_CH1  at 0 range 23 .. 23;
      INLINK_PARK_CH1     at 0 range 24 .. 24;
      Reserved_25_31      at 0 range 25 .. 31;
   end record;

   subtype IN_STATE_CH1_INLINK_DSCR_ADDR_CH1_Field is HAL.UInt18;
   subtype IN_STATE_CH1_IN_DSCR_STATE_CH1_Field is HAL.UInt2;
   subtype IN_STATE_CH1_IN_STATE_CH1_Field is HAL.UInt3;

   --  DMA_IN_STATE_CH1_REG.
   type IN_STATE_CH1_Register is record
      --  Read-only. This register stores the current inlink descriptor's
      --  address.
      INLINK_DSCR_ADDR_CH1 : IN_STATE_CH1_INLINK_DSCR_ADDR_CH1_Field;
      --  Read-only. reserved
      IN_DSCR_STATE_CH1    : IN_STATE_CH1_IN_DSCR_STATE_CH1_Field;
      --  Read-only. reserved
      IN_STATE_CH1         : IN_STATE_CH1_IN_STATE_CH1_Field;
      --  unspecified
      Reserved_23_31       : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_STATE_CH1_Register use record
      INLINK_DSCR_ADDR_CH1 at 0 range 0 .. 17;
      IN_DSCR_STATE_CH1    at 0 range 18 .. 19;
      IN_STATE_CH1         at 0 range 20 .. 22;
      Reserved_23_31       at 0 range 23 .. 31;
   end record;

   subtype IN_PRI_CH1_RX_PRI_CH1_Field is HAL.UInt4;

   --  DMA_IN_PRI_CH1_REG.
   type IN_PRI_CH1_Register is record
      --  The priority of Rx channel 1. The larger of the value, the higher of
      --  the priority.
      RX_PRI_CH1    : IN_PRI_CH1_RX_PRI_CH1_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_PRI_CH1_Register use record
      RX_PRI_CH1    at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype IN_PERI_SEL_CH1_PERI_IN_SEL_CH1_Field is HAL.UInt6;

   --  DMA_IN_PERI_SEL_CH1_REG.
   type IN_PERI_SEL_CH1_Register is record
      --  This register is used to select peripheral for Rx channel 1. 0:SPI2.
      --  1: reserved. 2: UHCI0. 3: I2S0. 4: reserved. 5: reserved. 6: AES. 7:
      --  SHA. 8: ADC_DAC.
      PERI_IN_SEL_CH1 : IN_PERI_SEL_CH1_PERI_IN_SEL_CH1_Field := 16#3F#;
      --  unspecified
      Reserved_6_31   : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_PERI_SEL_CH1_Register use record
      PERI_IN_SEL_CH1 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   --  DMA_OUT_CONF0_CH1_REG.
   type OUT_CONF0_CH1_Register is record
      --  This bit is used to reset DMA channel 1 Tx FSM and Tx FIFO pointer.
      OUT_RST_CH1           : Boolean := False;
      --  reserved
      OUT_LOOP_TEST_CH1     : Boolean := False;
      --  Set this bit to enable automatic outlink-writeback when all the data
      --  in tx buffer has been transmitted.
      OUT_AUTO_WRBACK_CH1   : Boolean := False;
      --  EOF flag generation mode when transmitting data. 1: EOF flag for Tx
      --  channel 1 is generated when data need to transmit has been popped
      --  from FIFO in DMA
      OUT_EOF_MODE_CH1      : Boolean := True;
      --  Set this bit to 1 to enable INCR burst transfer for Tx channel 1
      --  reading link descriptor when accessing internal SRAM.
      OUTDSCR_BURST_EN_CH1  : Boolean := False;
      --  Set this bit to 1 to enable INCR burst transfer for Tx channel 1
      --  transmitting data when accessing internal SRAM.
      OUT_DATA_BURST_EN_CH1 : Boolean := False;
      --  unspecified
      Reserved_6_31         : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_CONF0_CH1_Register use record
      OUT_RST_CH1           at 0 range 0 .. 0;
      OUT_LOOP_TEST_CH1     at 0 range 1 .. 1;
      OUT_AUTO_WRBACK_CH1   at 0 range 2 .. 2;
      OUT_EOF_MODE_CH1      at 0 range 3 .. 3;
      OUTDSCR_BURST_EN_CH1  at 0 range 4 .. 4;
      OUT_DATA_BURST_EN_CH1 at 0 range 5 .. 5;
      Reserved_6_31         at 0 range 6 .. 31;
   end record;

   --  DMA_OUT_CONF1_CH1_REG.
   type OUT_CONF1_CH1_Register is record
      --  unspecified
      Reserved_0_11       : HAL.UInt12 := 16#0#;
      --  Set this bit to enable checking the owner attribute of the link
      --  descriptor.
      OUT_CHECK_OWNER_CH1 : Boolean := False;
      --  unspecified
      Reserved_13_31      : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_CONF1_CH1_Register use record
      Reserved_0_11       at 0 range 0 .. 11;
      OUT_CHECK_OWNER_CH1 at 0 range 12 .. 12;
      Reserved_13_31      at 0 range 13 .. 31;
   end record;

   subtype OUTFIFO_STATUS_CH1_OUTFIFO_CNT_CH1_Field is HAL.UInt6;

   --  DMA_OUTFIFO_STATUS_CH1_REG.
   type OUTFIFO_STATUS_CH1_Register is record
      --  Read-only. L1 Tx FIFO full signal for Tx channel 1.
      OUTFIFO_FULL_CH1        : Boolean;
      --  Read-only. L1 Tx FIFO empty signal for Tx channel 1.
      OUTFIFO_EMPTY_CH1       : Boolean;
      --  Read-only. The register stores the byte number of the data in L1 Tx
      --  FIFO for Tx channel 1.
      OUTFIFO_CNT_CH1         : OUTFIFO_STATUS_CH1_OUTFIFO_CNT_CH1_Field;
      --  unspecified
      Reserved_8_22           : HAL.UInt15;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_1B_CH1 : Boolean;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_2B_CH1 : Boolean;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_3B_CH1 : Boolean;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_4B_CH1 : Boolean;
      --  unspecified
      Reserved_27_31          : HAL.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUTFIFO_STATUS_CH1_Register use record
      OUTFIFO_FULL_CH1        at 0 range 0 .. 0;
      OUTFIFO_EMPTY_CH1       at 0 range 1 .. 1;
      OUTFIFO_CNT_CH1         at 0 range 2 .. 7;
      Reserved_8_22           at 0 range 8 .. 22;
      OUT_REMAIN_UNDER_1B_CH1 at 0 range 23 .. 23;
      OUT_REMAIN_UNDER_2B_CH1 at 0 range 24 .. 24;
      OUT_REMAIN_UNDER_3B_CH1 at 0 range 25 .. 25;
      OUT_REMAIN_UNDER_4B_CH1 at 0 range 26 .. 26;
      Reserved_27_31          at 0 range 27 .. 31;
   end record;

   subtype OUT_PUSH_CH1_OUTFIFO_WDATA_CH1_Field is HAL.UInt9;

   --  DMA_OUT_PUSH_CH1_REG.
   type OUT_PUSH_CH1_Register is record
      --  This register stores the data that need to be pushed into DMA FIFO.
      OUTFIFO_WDATA_CH1 : OUT_PUSH_CH1_OUTFIFO_WDATA_CH1_Field := 16#0#;
      --  Set this bit to push data into DMA FIFO.
      OUTFIFO_PUSH_CH1  : Boolean := False;
      --  unspecified
      Reserved_10_31    : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_PUSH_CH1_Register use record
      OUTFIFO_WDATA_CH1 at 0 range 0 .. 8;
      OUTFIFO_PUSH_CH1  at 0 range 9 .. 9;
      Reserved_10_31    at 0 range 10 .. 31;
   end record;

   subtype OUT_LINK_CH1_OUTLINK_ADDR_CH1_Field is HAL.UInt20;

   --  DMA_OUT_LINK_CH1_REG.
   type OUT_LINK_CH1_Register is record
      --  This register stores the 20 least significant bits of the first
      --  outlink descriptor's address.
      OUTLINK_ADDR_CH1    : OUT_LINK_CH1_OUTLINK_ADDR_CH1_Field := 16#0#;
      --  Set this bit to stop dealing with the outlink descriptors.
      OUTLINK_STOP_CH1    : Boolean := False;
      --  Set this bit to start dealing with the outlink descriptors.
      OUTLINK_START_CH1   : Boolean := False;
      --  Set this bit to restart a new outlink from the last address.
      OUTLINK_RESTART_CH1 : Boolean := False;
      --  Read-only. 1: the outlink descriptor's FSM is in idle state. 0: the
      --  outlink descriptor's FSM is working.
      OUTLINK_PARK_CH1    : Boolean := True;
      --  unspecified
      Reserved_24_31      : HAL.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_LINK_CH1_Register use record
      OUTLINK_ADDR_CH1    at 0 range 0 .. 19;
      OUTLINK_STOP_CH1    at 0 range 20 .. 20;
      OUTLINK_START_CH1   at 0 range 21 .. 21;
      OUTLINK_RESTART_CH1 at 0 range 22 .. 22;
      OUTLINK_PARK_CH1    at 0 range 23 .. 23;
      Reserved_24_31      at 0 range 24 .. 31;
   end record;

   subtype OUT_STATE_CH1_OUTLINK_DSCR_ADDR_CH1_Field is HAL.UInt18;
   subtype OUT_STATE_CH1_OUT_DSCR_STATE_CH1_Field is HAL.UInt2;
   subtype OUT_STATE_CH1_OUT_STATE_CH1_Field is HAL.UInt3;

   --  DMA_OUT_STATE_CH1_REG.
   type OUT_STATE_CH1_Register is record
      --  Read-only. This register stores the current outlink descriptor's
      --  address.
      OUTLINK_DSCR_ADDR_CH1 : OUT_STATE_CH1_OUTLINK_DSCR_ADDR_CH1_Field;
      --  Read-only. reserved
      OUT_DSCR_STATE_CH1    : OUT_STATE_CH1_OUT_DSCR_STATE_CH1_Field;
      --  Read-only. reserved
      OUT_STATE_CH1         : OUT_STATE_CH1_OUT_STATE_CH1_Field;
      --  unspecified
      Reserved_23_31        : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_STATE_CH1_Register use record
      OUTLINK_DSCR_ADDR_CH1 at 0 range 0 .. 17;
      OUT_DSCR_STATE_CH1    at 0 range 18 .. 19;
      OUT_STATE_CH1         at 0 range 20 .. 22;
      Reserved_23_31        at 0 range 23 .. 31;
   end record;

   subtype OUT_PRI_CH1_TX_PRI_CH1_Field is HAL.UInt4;

   --  DMA_OUT_PRI_CH1_REG.
   type OUT_PRI_CH1_Register is record
      --  The priority of Tx channel 1. The larger of the value, the higher of
      --  the priority.
      TX_PRI_CH1    : OUT_PRI_CH1_TX_PRI_CH1_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_PRI_CH1_Register use record
      TX_PRI_CH1    at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype OUT_PERI_SEL_CH1_PERI_OUT_SEL_CH1_Field is HAL.UInt6;

   --  DMA_OUT_PERI_SEL_CH1_REG.
   type OUT_PERI_SEL_CH1_Register is record
      --  This register is used to select peripheral for Tx channel 1. 0:SPI2.
      --  1: reserved. 2: UHCI0. 3: I2S0. 4: reserved. 5: reserved. 6: AES. 7:
      --  SHA. 8: ADC_DAC.
      PERI_OUT_SEL_CH1 : OUT_PERI_SEL_CH1_PERI_OUT_SEL_CH1_Field := 16#3F#;
      --  unspecified
      Reserved_6_31    : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_PERI_SEL_CH1_Register use record
      PERI_OUT_SEL_CH1 at 0 range 0 .. 5;
      Reserved_6_31    at 0 range 6 .. 31;
   end record;

   --  DMA_IN_CONF0_CH2_REG.
   type IN_CONF0_CH2_Register is record
      --  This bit is used to reset DMA channel 2 Rx FSM and Rx FIFO pointer.
      IN_RST_CH2           : Boolean := False;
      --  reserved
      IN_LOOP_TEST_CH2     : Boolean := False;
      --  Set this bit to 1 to enable INCR burst transfer for Rx channel 2
      --  reading link descriptor when accessing internal SRAM.
      INDSCR_BURST_EN_CH2  : Boolean := False;
      --  Set this bit to 1 to enable INCR burst transfer for Rx channel 2
      --  receiving data when accessing internal SRAM.
      IN_DATA_BURST_EN_CH2 : Boolean := False;
      --  Set this bit 1 to enable automatic transmitting data from memory to
      --  memory via DMA.
      MEM_TRANS_EN_CH2     : Boolean := False;
      --  unspecified
      Reserved_5_31        : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_CONF0_CH2_Register use record
      IN_RST_CH2           at 0 range 0 .. 0;
      IN_LOOP_TEST_CH2     at 0 range 1 .. 1;
      INDSCR_BURST_EN_CH2  at 0 range 2 .. 2;
      IN_DATA_BURST_EN_CH2 at 0 range 3 .. 3;
      MEM_TRANS_EN_CH2     at 0 range 4 .. 4;
      Reserved_5_31        at 0 range 5 .. 31;
   end record;

   --  DMA_IN_CONF1_CH2_REG.
   type IN_CONF1_CH2_Register is record
      --  unspecified
      Reserved_0_11      : HAL.UInt12 := 16#0#;
      --  Set this bit to enable checking the owner attribute of the link
      --  descriptor.
      IN_CHECK_OWNER_CH2 : Boolean := False;
      --  unspecified
      Reserved_13_31     : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_CONF1_CH2_Register use record
      Reserved_0_11      at 0 range 0 .. 11;
      IN_CHECK_OWNER_CH2 at 0 range 12 .. 12;
      Reserved_13_31     at 0 range 13 .. 31;
   end record;

   subtype INFIFO_STATUS_CH2_INFIFO_CNT_CH2_Field is HAL.UInt6;

   --  DMA_INFIFO_STATUS_CH2_REG.
   type INFIFO_STATUS_CH2_Register is record
      --  Read-only. L1 Rx FIFO full signal for Rx channel 2.
      INFIFO_FULL_CH2        : Boolean;
      --  Read-only. L1 Rx FIFO empty signal for Rx channel 2.
      INFIFO_EMPTY_CH2       : Boolean;
      --  Read-only. The register stores the byte number of the data in L1 Rx
      --  FIFO for Rx channel 2.
      INFIFO_CNT_CH2         : INFIFO_STATUS_CH2_INFIFO_CNT_CH2_Field;
      --  unspecified
      Reserved_8_22          : HAL.UInt15;
      --  Read-only. reserved
      IN_REMAIN_UNDER_1B_CH2 : Boolean;
      --  Read-only. reserved
      IN_REMAIN_UNDER_2B_CH2 : Boolean;
      --  Read-only. reserved
      IN_REMAIN_UNDER_3B_CH2 : Boolean;
      --  Read-only. reserved
      IN_REMAIN_UNDER_4B_CH2 : Boolean;
      --  Read-only. reserved
      IN_BUF_HUNGRY_CH2      : Boolean;
      --  unspecified
      Reserved_28_31         : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INFIFO_STATUS_CH2_Register use record
      INFIFO_FULL_CH2        at 0 range 0 .. 0;
      INFIFO_EMPTY_CH2       at 0 range 1 .. 1;
      INFIFO_CNT_CH2         at 0 range 2 .. 7;
      Reserved_8_22          at 0 range 8 .. 22;
      IN_REMAIN_UNDER_1B_CH2 at 0 range 23 .. 23;
      IN_REMAIN_UNDER_2B_CH2 at 0 range 24 .. 24;
      IN_REMAIN_UNDER_3B_CH2 at 0 range 25 .. 25;
      IN_REMAIN_UNDER_4B_CH2 at 0 range 26 .. 26;
      IN_BUF_HUNGRY_CH2      at 0 range 27 .. 27;
      Reserved_28_31         at 0 range 28 .. 31;
   end record;

   subtype IN_POP_CH2_INFIFO_RDATA_CH2_Field is HAL.UInt12;

   --  DMA_IN_POP_CH2_REG.
   type IN_POP_CH2_Register is record
      --  Read-only. This register stores the data popping from DMA FIFO.
      INFIFO_RDATA_CH2 : IN_POP_CH2_INFIFO_RDATA_CH2_Field := 16#800#;
      --  Set this bit to pop data from DMA FIFO.
      INFIFO_POP_CH2   : Boolean := False;
      --  unspecified
      Reserved_13_31   : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_POP_CH2_Register use record
      INFIFO_RDATA_CH2 at 0 range 0 .. 11;
      INFIFO_POP_CH2   at 0 range 12 .. 12;
      Reserved_13_31   at 0 range 13 .. 31;
   end record;

   subtype IN_LINK_CH2_INLINK_ADDR_CH2_Field is HAL.UInt20;

   --  DMA_IN_LINK_CH2_REG.
   type IN_LINK_CH2_Register is record
      --  This register stores the 20 least significant bits of the first
      --  inlink descriptor's address.
      INLINK_ADDR_CH2     : IN_LINK_CH2_INLINK_ADDR_CH2_Field := 16#0#;
      --  Set this bit to return to current inlink descriptor's address, when
      --  there are some errors in current receiving data.
      INLINK_AUTO_RET_CH2 : Boolean := True;
      --  Set this bit to stop dealing with the inlink descriptors.
      INLINK_STOP_CH2     : Boolean := False;
      --  Set this bit to start dealing with the inlink descriptors.
      INLINK_START_CH2    : Boolean := False;
      --  Set this bit to mount a new inlink descriptor.
      INLINK_RESTART_CH2  : Boolean := False;
      --  Read-only. 1: the inlink descriptor's FSM is in idle state. 0: the
      --  inlink descriptor's FSM is working.
      INLINK_PARK_CH2     : Boolean := True;
      --  unspecified
      Reserved_25_31      : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_LINK_CH2_Register use record
      INLINK_ADDR_CH2     at 0 range 0 .. 19;
      INLINK_AUTO_RET_CH2 at 0 range 20 .. 20;
      INLINK_STOP_CH2     at 0 range 21 .. 21;
      INLINK_START_CH2    at 0 range 22 .. 22;
      INLINK_RESTART_CH2  at 0 range 23 .. 23;
      INLINK_PARK_CH2     at 0 range 24 .. 24;
      Reserved_25_31      at 0 range 25 .. 31;
   end record;

   subtype IN_STATE_CH2_INLINK_DSCR_ADDR_CH2_Field is HAL.UInt18;
   subtype IN_STATE_CH2_IN_DSCR_STATE_CH2_Field is HAL.UInt2;
   subtype IN_STATE_CH2_IN_STATE_CH2_Field is HAL.UInt3;

   --  DMA_IN_STATE_CH2_REG.
   type IN_STATE_CH2_Register is record
      --  Read-only. This register stores the current inlink descriptor's
      --  address.
      INLINK_DSCR_ADDR_CH2 : IN_STATE_CH2_INLINK_DSCR_ADDR_CH2_Field;
      --  Read-only. reserved
      IN_DSCR_STATE_CH2    : IN_STATE_CH2_IN_DSCR_STATE_CH2_Field;
      --  Read-only. reserved
      IN_STATE_CH2         : IN_STATE_CH2_IN_STATE_CH2_Field;
      --  unspecified
      Reserved_23_31       : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_STATE_CH2_Register use record
      INLINK_DSCR_ADDR_CH2 at 0 range 0 .. 17;
      IN_DSCR_STATE_CH2    at 0 range 18 .. 19;
      IN_STATE_CH2         at 0 range 20 .. 22;
      Reserved_23_31       at 0 range 23 .. 31;
   end record;

   subtype IN_PRI_CH2_RX_PRI_CH2_Field is HAL.UInt4;

   --  DMA_IN_PRI_CH2_REG.
   type IN_PRI_CH2_Register is record
      --  The priority of Rx channel 2. The larger of the value, the higher of
      --  the priority.
      RX_PRI_CH2    : IN_PRI_CH2_RX_PRI_CH2_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_PRI_CH2_Register use record
      RX_PRI_CH2    at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype IN_PERI_SEL_CH2_PERI_IN_SEL_CH2_Field is HAL.UInt6;

   --  DMA_IN_PERI_SEL_CH2_REG.
   type IN_PERI_SEL_CH2_Register is record
      --  This register is used to select peripheral for Rx channel 2. 0:SPI2.
      --  1: reserved. 2: UHCI0. 3: I2S0. 4: reserved. 5: reserved. 6: AES. 7:
      --  SHA. 8: ADC_DAC.
      PERI_IN_SEL_CH2 : IN_PERI_SEL_CH2_PERI_IN_SEL_CH2_Field := 16#3F#;
      --  unspecified
      Reserved_6_31   : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_PERI_SEL_CH2_Register use record
      PERI_IN_SEL_CH2 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   --  DMA_OUT_CONF0_CH2_REG.
   type OUT_CONF0_CH2_Register is record
      --  This bit is used to reset DMA channel 2 Tx FSM and Tx FIFO pointer.
      OUT_RST_CH2           : Boolean := False;
      --  reserved
      OUT_LOOP_TEST_CH2     : Boolean := False;
      --  Set this bit to enable automatic outlink-writeback when all the data
      --  in tx buffer has been transmitted.
      OUT_AUTO_WRBACK_CH2   : Boolean := False;
      --  EOF flag generation mode when transmitting data. 1: EOF flag for Tx
      --  channel 2 is generated when data need to transmit has been popped
      --  from FIFO in DMA
      OUT_EOF_MODE_CH2      : Boolean := True;
      --  Set this bit to 1 to enable INCR burst transfer for Tx channel 2
      --  reading link descriptor when accessing internal SRAM.
      OUTDSCR_BURST_EN_CH2  : Boolean := False;
      --  Set this bit to 1 to enable INCR burst transfer for Tx channel 2
      --  transmitting data when accessing internal SRAM.
      OUT_DATA_BURST_EN_CH2 : Boolean := False;
      --  unspecified
      Reserved_6_31         : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_CONF0_CH2_Register use record
      OUT_RST_CH2           at 0 range 0 .. 0;
      OUT_LOOP_TEST_CH2     at 0 range 1 .. 1;
      OUT_AUTO_WRBACK_CH2   at 0 range 2 .. 2;
      OUT_EOF_MODE_CH2      at 0 range 3 .. 3;
      OUTDSCR_BURST_EN_CH2  at 0 range 4 .. 4;
      OUT_DATA_BURST_EN_CH2 at 0 range 5 .. 5;
      Reserved_6_31         at 0 range 6 .. 31;
   end record;

   --  DMA_OUT_CONF1_CH2_REG.
   type OUT_CONF1_CH2_Register is record
      --  unspecified
      Reserved_0_11       : HAL.UInt12 := 16#0#;
      --  Set this bit to enable checking the owner attribute of the link
      --  descriptor.
      OUT_CHECK_OWNER_CH2 : Boolean := False;
      --  unspecified
      Reserved_13_31      : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_CONF1_CH2_Register use record
      Reserved_0_11       at 0 range 0 .. 11;
      OUT_CHECK_OWNER_CH2 at 0 range 12 .. 12;
      Reserved_13_31      at 0 range 13 .. 31;
   end record;

   subtype OUTFIFO_STATUS_CH2_OUTFIFO_CNT_CH2_Field is HAL.UInt6;

   --  DMA_OUTFIFO_STATUS_CH2_REG.
   type OUTFIFO_STATUS_CH2_Register is record
      --  Read-only. L1 Tx FIFO full signal for Tx channel 2.
      OUTFIFO_FULL_CH2        : Boolean;
      --  Read-only. L1 Tx FIFO empty signal for Tx channel 2.
      OUTFIFO_EMPTY_CH2       : Boolean;
      --  Read-only. The register stores the byte number of the data in L1 Tx
      --  FIFO for Tx channel 2.
      OUTFIFO_CNT_CH2         : OUTFIFO_STATUS_CH2_OUTFIFO_CNT_CH2_Field;
      --  unspecified
      Reserved_8_22           : HAL.UInt15;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_1B_CH2 : Boolean;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_2B_CH2 : Boolean;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_3B_CH2 : Boolean;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_4B_CH2 : Boolean;
      --  unspecified
      Reserved_27_31          : HAL.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUTFIFO_STATUS_CH2_Register use record
      OUTFIFO_FULL_CH2        at 0 range 0 .. 0;
      OUTFIFO_EMPTY_CH2       at 0 range 1 .. 1;
      OUTFIFO_CNT_CH2         at 0 range 2 .. 7;
      Reserved_8_22           at 0 range 8 .. 22;
      OUT_REMAIN_UNDER_1B_CH2 at 0 range 23 .. 23;
      OUT_REMAIN_UNDER_2B_CH2 at 0 range 24 .. 24;
      OUT_REMAIN_UNDER_3B_CH2 at 0 range 25 .. 25;
      OUT_REMAIN_UNDER_4B_CH2 at 0 range 26 .. 26;
      Reserved_27_31          at 0 range 27 .. 31;
   end record;

   subtype OUT_PUSH_CH2_OUTFIFO_WDATA_CH2_Field is HAL.UInt9;

   --  DMA_OUT_PUSH_CH2_REG.
   type OUT_PUSH_CH2_Register is record
      --  This register stores the data that need to be pushed into DMA FIFO.
      OUTFIFO_WDATA_CH2 : OUT_PUSH_CH2_OUTFIFO_WDATA_CH2_Field := 16#0#;
      --  Set this bit to push data into DMA FIFO.
      OUTFIFO_PUSH_CH2  : Boolean := False;
      --  unspecified
      Reserved_10_31    : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_PUSH_CH2_Register use record
      OUTFIFO_WDATA_CH2 at 0 range 0 .. 8;
      OUTFIFO_PUSH_CH2  at 0 range 9 .. 9;
      Reserved_10_31    at 0 range 10 .. 31;
   end record;

   subtype OUT_LINK_CH2_OUTLINK_ADDR_CH2_Field is HAL.UInt20;

   --  DMA_OUT_LINK_CH2_REG.
   type OUT_LINK_CH2_Register is record
      --  This register stores the 20 least significant bits of the first
      --  outlink descriptor's address.
      OUTLINK_ADDR_CH2    : OUT_LINK_CH2_OUTLINK_ADDR_CH2_Field := 16#0#;
      --  Set this bit to stop dealing with the outlink descriptors.
      OUTLINK_STOP_CH2    : Boolean := False;
      --  Set this bit to start dealing with the outlink descriptors.
      OUTLINK_START_CH2   : Boolean := False;
      --  Set this bit to restart a new outlink from the last address.
      OUTLINK_RESTART_CH2 : Boolean := False;
      --  Read-only. 1: the outlink descriptor's FSM is in idle state. 0: the
      --  outlink descriptor's FSM is working.
      OUTLINK_PARK_CH2    : Boolean := True;
      --  unspecified
      Reserved_24_31      : HAL.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_LINK_CH2_Register use record
      OUTLINK_ADDR_CH2    at 0 range 0 .. 19;
      OUTLINK_STOP_CH2    at 0 range 20 .. 20;
      OUTLINK_START_CH2   at 0 range 21 .. 21;
      OUTLINK_RESTART_CH2 at 0 range 22 .. 22;
      OUTLINK_PARK_CH2    at 0 range 23 .. 23;
      Reserved_24_31      at 0 range 24 .. 31;
   end record;

   subtype OUT_STATE_CH2_OUTLINK_DSCR_ADDR_CH2_Field is HAL.UInt18;
   subtype OUT_STATE_CH2_OUT_DSCR_STATE_CH2_Field is HAL.UInt2;
   subtype OUT_STATE_CH2_OUT_STATE_CH2_Field is HAL.UInt3;

   --  DMA_OUT_STATE_CH2_REG.
   type OUT_STATE_CH2_Register is record
      --  Read-only. This register stores the current outlink descriptor's
      --  address.
      OUTLINK_DSCR_ADDR_CH2 : OUT_STATE_CH2_OUTLINK_DSCR_ADDR_CH2_Field;
      --  Read-only. reserved
      OUT_DSCR_STATE_CH2    : OUT_STATE_CH2_OUT_DSCR_STATE_CH2_Field;
      --  Read-only. reserved
      OUT_STATE_CH2         : OUT_STATE_CH2_OUT_STATE_CH2_Field;
      --  unspecified
      Reserved_23_31        : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_STATE_CH2_Register use record
      OUTLINK_DSCR_ADDR_CH2 at 0 range 0 .. 17;
      OUT_DSCR_STATE_CH2    at 0 range 18 .. 19;
      OUT_STATE_CH2         at 0 range 20 .. 22;
      Reserved_23_31        at 0 range 23 .. 31;
   end record;

   subtype OUT_PRI_CH2_TX_PRI_CH2_Field is HAL.UInt4;

   --  DMA_OUT_PRI_CH2_REG.
   type OUT_PRI_CH2_Register is record
      --  The priority of Tx channel 2. The larger of the value, the higher of
      --  the priority.
      TX_PRI_CH2    : OUT_PRI_CH2_TX_PRI_CH2_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_PRI_CH2_Register use record
      TX_PRI_CH2    at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype OUT_PERI_SEL_CH2_PERI_OUT_SEL_CH2_Field is HAL.UInt6;

   --  DMA_OUT_PERI_SEL_CH2_REG.
   type OUT_PERI_SEL_CH2_Register is record
      --  This register is used to select peripheral for Tx channel 2. 0:SPI2.
      --  1: reserved. 2: UHCI0. 3: I2S0. 4: reserved. 5: reserved. 6: AES. 7:
      --  SHA. 8: ADC_DAC.
      PERI_OUT_SEL_CH2 : OUT_PERI_SEL_CH2_PERI_OUT_SEL_CH2_Field := 16#3F#;
      --  unspecified
      Reserved_6_31    : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_PERI_SEL_CH2_Register use record
      PERI_OUT_SEL_CH2 at 0 range 0 .. 5;
      Reserved_6_31    at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DMA (Direct Memory Access) Controller
   type DMA_Peripheral is record
      --  DMA_INT_RAW_CH0_REG.
      INT_RAW_CH0              : aliased INT_RAW_CH0_Register;
      --  DMA_INT_ST_CH0_REG.
      INT_ST_CH0               : aliased INT_ST_CH0_Register;
      --  DMA_INT_ENA_CH0_REG.
      INT_ENA_CH0              : aliased INT_ENA_CH0_Register;
      --  DMA_INT_CLR_CH0_REG.
      INT_CLR_CH0              : aliased INT_CLR_CH0_Register;
      --  DMA_INT_RAW_CH1_REG.
      INT_RAW_CH1              : aliased INT_RAW_CH1_Register;
      --  DMA_INT_ST_CH1_REG.
      INT_ST_CH1               : aliased INT_ST_CH1_Register;
      --  DMA_INT_ENA_CH1_REG.
      INT_ENA_CH1              : aliased INT_ENA_CH1_Register;
      --  DMA_INT_CLR_CH1_REG.
      INT_CLR_CH1              : aliased INT_CLR_CH1_Register;
      --  DMA_INT_RAW_CH2_REG.
      INT_RAW_CH2              : aliased INT_RAW_CH2_Register;
      --  DMA_INT_ST_CH2_REG.
      INT_ST_CH2               : aliased INT_ST_CH2_Register;
      --  DMA_INT_ENA_CH2_REG.
      INT_ENA_CH2              : aliased INT_ENA_CH2_Register;
      --  DMA_INT_CLR_CH2_REG.
      INT_CLR_CH2              : aliased INT_CLR_CH2_Register;
      --  DMA_AHB_TEST_REG.
      AHB_TEST                 : aliased AHB_TEST_Register;
      --  DMA_MISC_CONF_REG.
      MISC_CONF                : aliased MISC_CONF_Register;
      --  DMA_DATE_REG.
      DATE                     : aliased HAL.UInt32;
      --  DMA_IN_CONF0_CH0_REG.
      IN_CONF0_CH0             : aliased IN_CONF0_CH0_Register;
      --  DMA_IN_CONF1_CH0_REG.
      IN_CONF1_CH0             : aliased IN_CONF1_CH0_Register;
      --  DMA_INFIFO_STATUS_CH0_REG.
      INFIFO_STATUS_CH0        : aliased INFIFO_STATUS_CH0_Register;
      --  DMA_IN_POP_CH0_REG.
      IN_POP_CH0               : aliased IN_POP_CH0_Register;
      --  DMA_IN_LINK_CH0_REG.
      IN_LINK_CH0              : aliased IN_LINK_CH0_Register;
      --  DMA_IN_STATE_CH0_REG.
      IN_STATE_CH0             : aliased IN_STATE_CH0_Register;
      --  DMA_IN_SUC_EOF_DES_ADDR_CH0_REG.
      IN_SUC_EOF_DES_ADDR_CH0  : aliased HAL.UInt32;
      --  DMA_IN_ERR_EOF_DES_ADDR_CH0_REG.
      IN_ERR_EOF_DES_ADDR_CH0  : aliased HAL.UInt32;
      --  DMA_IN_DSCR_CH0_REG.
      IN_DSCR_CH0              : aliased HAL.UInt32;
      --  DMA_IN_DSCR_BF0_CH0_REG.
      IN_DSCR_BF0_CH0          : aliased HAL.UInt32;
      --  DMA_IN_DSCR_BF1_CH0_REG.
      IN_DSCR_BF1_CH0          : aliased HAL.UInt32;
      --  DMA_IN_PRI_CH0_REG.
      IN_PRI_CH0               : aliased IN_PRI_CH0_Register;
      --  DMA_IN_PERI_SEL_CH0_REG.
      IN_PERI_SEL_CH0          : aliased IN_PERI_SEL_CH0_Register;
      --  DMA_OUT_CONF0_CH0_REG.
      OUT_CONF0_CH0            : aliased OUT_CONF0_CH0_Register;
      --  DMA_OUT_CONF1_CH0_REG.
      OUT_CONF1_CH0            : aliased OUT_CONF1_CH0_Register;
      --  DMA_OUTFIFO_STATUS_CH0_REG.
      OUTFIFO_STATUS_CH0       : aliased OUTFIFO_STATUS_CH0_Register;
      --  DMA_OUT_PUSH_CH0_REG.
      OUT_PUSH_CH0             : aliased OUT_PUSH_CH0_Register;
      --  DMA_OUT_LINK_CH0_REG.
      OUT_LINK_CH0             : aliased OUT_LINK_CH0_Register;
      --  DMA_OUT_STATE_CH0_REG.
      OUT_STATE_CH0            : aliased OUT_STATE_CH0_Register;
      --  DMA_OUT_EOF_DES_ADDR_CH0_REG.
      OUT_EOF_DES_ADDR_CH0     : aliased HAL.UInt32;
      --  DMA_OUT_EOF_BFR_DES_ADDR_CH0_REG.
      OUT_EOF_BFR_DES_ADDR_CH0 : aliased HAL.UInt32;
      --  DMA_OUT_DSCR_CH0_REG.
      OUT_DSCR_CH0             : aliased HAL.UInt32;
      --  DMA_OUT_DSCR_BF0_CH0_REG.
      OUT_DSCR_BF0_CH0         : aliased HAL.UInt32;
      --  DMA_OUT_DSCR_BF1_CH0_REG.
      OUT_DSCR_BF1_CH0         : aliased HAL.UInt32;
      --  DMA_OUT_PRI_CH0_REG.
      OUT_PRI_CH0              : aliased OUT_PRI_CH0_Register;
      --  DMA_OUT_PERI_SEL_CH0_REG.
      OUT_PERI_SEL_CH0         : aliased OUT_PERI_SEL_CH0_Register;
      --  DMA_IN_CONF0_CH1_REG.
      IN_CONF0_CH1             : aliased IN_CONF0_CH1_Register;
      --  DMA_IN_CONF1_CH1_REG.
      IN_CONF1_CH1             : aliased IN_CONF1_CH1_Register;
      --  DMA_INFIFO_STATUS_CH1_REG.
      INFIFO_STATUS_CH1        : aliased INFIFO_STATUS_CH1_Register;
      --  DMA_IN_POP_CH1_REG.
      IN_POP_CH1               : aliased IN_POP_CH1_Register;
      --  DMA_IN_LINK_CH1_REG.
      IN_LINK_CH1              : aliased IN_LINK_CH1_Register;
      --  DMA_IN_STATE_CH1_REG.
      IN_STATE_CH1             : aliased IN_STATE_CH1_Register;
      --  DMA_IN_SUC_EOF_DES_ADDR_CH1_REG.
      IN_SUC_EOF_DES_ADDR_CH1  : aliased HAL.UInt32;
      --  DMA_IN_ERR_EOF_DES_ADDR_CH1_REG.
      IN_ERR_EOF_DES_ADDR_CH1  : aliased HAL.UInt32;
      --  DMA_IN_DSCR_CH1_REG.
      IN_DSCR_CH1              : aliased HAL.UInt32;
      --  DMA_IN_DSCR_BF0_CH1_REG.
      IN_DSCR_BF0_CH1          : aliased HAL.UInt32;
      --  DMA_IN_DSCR_BF1_CH1_REG.
      IN_DSCR_BF1_CH1          : aliased HAL.UInt32;
      --  DMA_IN_PRI_CH1_REG.
      IN_PRI_CH1               : aliased IN_PRI_CH1_Register;
      --  DMA_IN_PERI_SEL_CH1_REG.
      IN_PERI_SEL_CH1          : aliased IN_PERI_SEL_CH1_Register;
      --  DMA_OUT_CONF0_CH1_REG.
      OUT_CONF0_CH1            : aliased OUT_CONF0_CH1_Register;
      --  DMA_OUT_CONF1_CH1_REG.
      OUT_CONF1_CH1            : aliased OUT_CONF1_CH1_Register;
      --  DMA_OUTFIFO_STATUS_CH1_REG.
      OUTFIFO_STATUS_CH1       : aliased OUTFIFO_STATUS_CH1_Register;
      --  DMA_OUT_PUSH_CH1_REG.
      OUT_PUSH_CH1             : aliased OUT_PUSH_CH1_Register;
      --  DMA_OUT_LINK_CH1_REG.
      OUT_LINK_CH1             : aliased OUT_LINK_CH1_Register;
      --  DMA_OUT_STATE_CH1_REG.
      OUT_STATE_CH1            : aliased OUT_STATE_CH1_Register;
      --  DMA_OUT_EOF_DES_ADDR_CH1_REG.
      OUT_EOF_DES_ADDR_CH1     : aliased HAL.UInt32;
      --  DMA_OUT_EOF_BFR_DES_ADDR_CH1_REG.
      OUT_EOF_BFR_DES_ADDR_CH1 : aliased HAL.UInt32;
      --  DMA_OUT_DSCR_CH1_REG.
      OUT_DSCR_CH1             : aliased HAL.UInt32;
      --  DMA_OUT_DSCR_BF0_CH1_REG.
      OUT_DSCR_BF0_CH1         : aliased HAL.UInt32;
      --  DMA_OUT_DSCR_BF1_CH1_REG.
      OUT_DSCR_BF1_CH1         : aliased HAL.UInt32;
      --  DMA_OUT_PRI_CH1_REG.
      OUT_PRI_CH1              : aliased OUT_PRI_CH1_Register;
      --  DMA_OUT_PERI_SEL_CH1_REG.
      OUT_PERI_SEL_CH1         : aliased OUT_PERI_SEL_CH1_Register;
      --  DMA_IN_CONF0_CH2_REG.
      IN_CONF0_CH2             : aliased IN_CONF0_CH2_Register;
      --  DMA_IN_CONF1_CH2_REG.
      IN_CONF1_CH2             : aliased IN_CONF1_CH2_Register;
      --  DMA_INFIFO_STATUS_CH2_REG.
      INFIFO_STATUS_CH2        : aliased INFIFO_STATUS_CH2_Register;
      --  DMA_IN_POP_CH2_REG.
      IN_POP_CH2               : aliased IN_POP_CH2_Register;
      --  DMA_IN_LINK_CH2_REG.
      IN_LINK_CH2              : aliased IN_LINK_CH2_Register;
      --  DMA_IN_STATE_CH2_REG.
      IN_STATE_CH2             : aliased IN_STATE_CH2_Register;
      --  DMA_IN_SUC_EOF_DES_ADDR_CH2_REG.
      IN_SUC_EOF_DES_ADDR_CH2  : aliased HAL.UInt32;
      --  DMA_IN_ERR_EOF_DES_ADDR_CH2_REG.
      IN_ERR_EOF_DES_ADDR_CH2  : aliased HAL.UInt32;
      --  DMA_IN_DSCR_CH2_REG.
      IN_DSCR_CH2              : aliased HAL.UInt32;
      --  DMA_IN_DSCR_BF0_CH2_REG.
      IN_DSCR_BF0_CH2          : aliased HAL.UInt32;
      --  DMA_IN_DSCR_BF1_CH2_REG.
      IN_DSCR_BF1_CH2          : aliased HAL.UInt32;
      --  DMA_IN_PRI_CH2_REG.
      IN_PRI_CH2               : aliased IN_PRI_CH2_Register;
      --  DMA_IN_PERI_SEL_CH2_REG.
      IN_PERI_SEL_CH2          : aliased IN_PERI_SEL_CH2_Register;
      --  DMA_OUT_CONF0_CH2_REG.
      OUT_CONF0_CH2            : aliased OUT_CONF0_CH2_Register;
      --  DMA_OUT_CONF1_CH2_REG.
      OUT_CONF1_CH2            : aliased OUT_CONF1_CH2_Register;
      --  DMA_OUTFIFO_STATUS_CH2_REG.
      OUTFIFO_STATUS_CH2       : aliased OUTFIFO_STATUS_CH2_Register;
      --  DMA_OUT_PUSH_CH2_REG.
      OUT_PUSH_CH2             : aliased OUT_PUSH_CH2_Register;
      --  DMA_OUT_LINK_CH2_REG.
      OUT_LINK_CH2             : aliased OUT_LINK_CH2_Register;
      --  DMA_OUT_STATE_CH2_REG.
      OUT_STATE_CH2            : aliased OUT_STATE_CH2_Register;
      --  DMA_OUT_EOF_DES_ADDR_CH2_REG.
      OUT_EOF_DES_ADDR_CH2     : aliased HAL.UInt32;
      --  DMA_OUT_EOF_BFR_DES_ADDR_CH2_REG.
      OUT_EOF_BFR_DES_ADDR_CH2 : aliased HAL.UInt32;
      --  DMA_OUT_DSCR_CH2_REG.
      OUT_DSCR_CH2             : aliased HAL.UInt32;
      --  DMA_OUT_DSCR_BF0_CH2_REG.
      OUT_DSCR_BF0_CH2         : aliased HAL.UInt32;
      --  DMA_OUT_DSCR_BF1_CH2_REG.
      OUT_DSCR_BF1_CH2         : aliased HAL.UInt32;
      --  DMA_OUT_PRI_CH2_REG.
      OUT_PRI_CH2              : aliased OUT_PRI_CH2_Register;
      --  DMA_OUT_PERI_SEL_CH2_REG.
      OUT_PERI_SEL_CH2         : aliased OUT_PERI_SEL_CH2_Register;
   end record
     with Volatile;

   for DMA_Peripheral use record
      INT_RAW_CH0              at 16#0# range 0 .. 31;
      INT_ST_CH0               at 16#4# range 0 .. 31;
      INT_ENA_CH0              at 16#8# range 0 .. 31;
      INT_CLR_CH0              at 16#C# range 0 .. 31;
      INT_RAW_CH1              at 16#10# range 0 .. 31;
      INT_ST_CH1               at 16#14# range 0 .. 31;
      INT_ENA_CH1              at 16#18# range 0 .. 31;
      INT_CLR_CH1              at 16#1C# range 0 .. 31;
      INT_RAW_CH2              at 16#20# range 0 .. 31;
      INT_ST_CH2               at 16#24# range 0 .. 31;
      INT_ENA_CH2              at 16#28# range 0 .. 31;
      INT_CLR_CH2              at 16#2C# range 0 .. 31;
      AHB_TEST                 at 16#40# range 0 .. 31;
      MISC_CONF                at 16#44# range 0 .. 31;
      DATE                     at 16#48# range 0 .. 31;
      IN_CONF0_CH0             at 16#70# range 0 .. 31;
      IN_CONF1_CH0             at 16#74# range 0 .. 31;
      INFIFO_STATUS_CH0        at 16#78# range 0 .. 31;
      IN_POP_CH0               at 16#7C# range 0 .. 31;
      IN_LINK_CH0              at 16#80# range 0 .. 31;
      IN_STATE_CH0             at 16#84# range 0 .. 31;
      IN_SUC_EOF_DES_ADDR_CH0  at 16#88# range 0 .. 31;
      IN_ERR_EOF_DES_ADDR_CH0  at 16#8C# range 0 .. 31;
      IN_DSCR_CH0              at 16#90# range 0 .. 31;
      IN_DSCR_BF0_CH0          at 16#94# range 0 .. 31;
      IN_DSCR_BF1_CH0          at 16#98# range 0 .. 31;
      IN_PRI_CH0               at 16#9C# range 0 .. 31;
      IN_PERI_SEL_CH0          at 16#A0# range 0 .. 31;
      OUT_CONF0_CH0            at 16#D0# range 0 .. 31;
      OUT_CONF1_CH0            at 16#D4# range 0 .. 31;
      OUTFIFO_STATUS_CH0       at 16#D8# range 0 .. 31;
      OUT_PUSH_CH0             at 16#DC# range 0 .. 31;
      OUT_LINK_CH0             at 16#E0# range 0 .. 31;
      OUT_STATE_CH0            at 16#E4# range 0 .. 31;
      OUT_EOF_DES_ADDR_CH0     at 16#E8# range 0 .. 31;
      OUT_EOF_BFR_DES_ADDR_CH0 at 16#EC# range 0 .. 31;
      OUT_DSCR_CH0             at 16#F0# range 0 .. 31;
      OUT_DSCR_BF0_CH0         at 16#F4# range 0 .. 31;
      OUT_DSCR_BF1_CH0         at 16#F8# range 0 .. 31;
      OUT_PRI_CH0              at 16#FC# range 0 .. 31;
      OUT_PERI_SEL_CH0         at 16#100# range 0 .. 31;
      IN_CONF0_CH1             at 16#130# range 0 .. 31;
      IN_CONF1_CH1             at 16#134# range 0 .. 31;
      INFIFO_STATUS_CH1        at 16#138# range 0 .. 31;
      IN_POP_CH1               at 16#13C# range 0 .. 31;
      IN_LINK_CH1              at 16#140# range 0 .. 31;
      IN_STATE_CH1             at 16#144# range 0 .. 31;
      IN_SUC_EOF_DES_ADDR_CH1  at 16#148# range 0 .. 31;
      IN_ERR_EOF_DES_ADDR_CH1  at 16#14C# range 0 .. 31;
      IN_DSCR_CH1              at 16#150# range 0 .. 31;
      IN_DSCR_BF0_CH1          at 16#154# range 0 .. 31;
      IN_DSCR_BF1_CH1          at 16#158# range 0 .. 31;
      IN_PRI_CH1               at 16#15C# range 0 .. 31;
      IN_PERI_SEL_CH1          at 16#160# range 0 .. 31;
      OUT_CONF0_CH1            at 16#190# range 0 .. 31;
      OUT_CONF1_CH1            at 16#194# range 0 .. 31;
      OUTFIFO_STATUS_CH1       at 16#198# range 0 .. 31;
      OUT_PUSH_CH1             at 16#19C# range 0 .. 31;
      OUT_LINK_CH1             at 16#1A0# range 0 .. 31;
      OUT_STATE_CH1            at 16#1A4# range 0 .. 31;
      OUT_EOF_DES_ADDR_CH1     at 16#1A8# range 0 .. 31;
      OUT_EOF_BFR_DES_ADDR_CH1 at 16#1AC# range 0 .. 31;
      OUT_DSCR_CH1             at 16#1B0# range 0 .. 31;
      OUT_DSCR_BF0_CH1         at 16#1B4# range 0 .. 31;
      OUT_DSCR_BF1_CH1         at 16#1B8# range 0 .. 31;
      OUT_PRI_CH1              at 16#1BC# range 0 .. 31;
      OUT_PERI_SEL_CH1         at 16#1C0# range 0 .. 31;
      IN_CONF0_CH2             at 16#1F0# range 0 .. 31;
      IN_CONF1_CH2             at 16#1F4# range 0 .. 31;
      INFIFO_STATUS_CH2        at 16#1F8# range 0 .. 31;
      IN_POP_CH2               at 16#1FC# range 0 .. 31;
      IN_LINK_CH2              at 16#200# range 0 .. 31;
      IN_STATE_CH2             at 16#204# range 0 .. 31;
      IN_SUC_EOF_DES_ADDR_CH2  at 16#208# range 0 .. 31;
      IN_ERR_EOF_DES_ADDR_CH2  at 16#20C# range 0 .. 31;
      IN_DSCR_CH2              at 16#210# range 0 .. 31;
      IN_DSCR_BF0_CH2          at 16#214# range 0 .. 31;
      IN_DSCR_BF1_CH2          at 16#218# range 0 .. 31;
      IN_PRI_CH2               at 16#21C# range 0 .. 31;
      IN_PERI_SEL_CH2          at 16#220# range 0 .. 31;
      OUT_CONF0_CH2            at 16#250# range 0 .. 31;
      OUT_CONF1_CH2            at 16#254# range 0 .. 31;
      OUTFIFO_STATUS_CH2       at 16#258# range 0 .. 31;
      OUT_PUSH_CH2             at 16#25C# range 0 .. 31;
      OUT_LINK_CH2             at 16#260# range 0 .. 31;
      OUT_STATE_CH2            at 16#264# range 0 .. 31;
      OUT_EOF_DES_ADDR_CH2     at 16#268# range 0 .. 31;
      OUT_EOF_BFR_DES_ADDR_CH2 at 16#26C# range 0 .. 31;
      OUT_DSCR_CH2             at 16#270# range 0 .. 31;
      OUT_DSCR_BF0_CH2         at 16#274# range 0 .. 31;
      OUT_DSCR_BF1_CH2         at 16#278# range 0 .. 31;
      OUT_PRI_CH2              at 16#27C# range 0 .. 31;
      OUT_PERI_SEL_CH2         at 16#280# range 0 .. 31;
   end record;

   --  DMA (Direct Memory Access) Controller
   DMA_Periph : aliased DMA_Peripheral
     with Import, Address => DMA_Base;

end ESP32C3.DMA;
