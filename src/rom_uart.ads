package ROM_UART is

   procedure putchar
      (Ch : Character)
   with Export, Convention => C, External_Name => "putchar";

end ROM_UART;
