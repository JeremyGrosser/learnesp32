with System.Machine_Code;

package body ROM_UART is

   type Status is
      (Ok, Fail, Pending, Busy, Cancel)
      with Size => 8;

   function uart_tx_one_char
      (Ch : Character)
      return Status
   with Import, Convention => C, External_Name => "uart_tx_one_char";

   procedure putchar (Ch : Character) is
      use System.Machine_Code;
      Err : Status with Unreferenced;
   begin
      --  Asm ("ebreak", Volatile => True);
      if Ch = ASCII.NUL then
         putchar (ASCII.CR);
         putchar (ASCII.LF);
      else
         Err := uart_tx_one_char (Ch);
      end if;
   end putchar;

end ROM_UART;
