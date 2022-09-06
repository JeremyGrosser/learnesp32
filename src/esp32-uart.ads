package ESP32.UART is

   procedure Put (Ch : Character)
      with Export, Convention => C, External_Name => "putchar";

   procedure Put (S : String);
   procedure New_Line;
   procedure Put_Line (S : String);

end ESP32.UART;
