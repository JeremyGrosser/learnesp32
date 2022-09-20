with ESP32C3_SVD.UART;

package body ESP32.UART is

   procedure Put (Ch : Character) is
      use ESP32C3_SVD.UART;
   begin
      UART0_Periph.FIFO.RXFIFO_RD_BYTE :=
         FIFO_RXFIFO_RD_BYTE_Field (Character'Pos (Ch));
      while not UART0_Periph.INT_RAW.TX_DONE_INT_RAW loop
         null;
      end loop;
      UART0_Periph.INT_CLR.TX_DONE_INT_CLR := True;
   end Put;

   procedure Put (S : String) is
   begin
      for Ch of S loop
         Put (Ch);
      end loop;
   end Put;

   procedure New_Line is
   begin
      Put (ASCII.CR);
      Put (ASCII.LF);
   end New_Line;

   procedure Put_Line (S : String) is
   begin
      Put (S);
      New_Line;
   end Put_Line;

end ESP32.UART;
