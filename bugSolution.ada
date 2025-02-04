```ada
procedure Example is
   subtype My_Sub_Type is Integer range 1..10;
   My_Variable : My_Sub_Type := 1;
begin
   My_Variable := My_Variable + 5;
   if My_Variable > My_Sub_Type'Last then
      My_Variable := My_Sub_Type'Last; --Clamp to the maximum value
      Put_Line ("Value adjusted to maximum allowed");
   end if;
   Put_Line("My_Variable: " & My_Variable'Image);
exception
   when others =>
      Put_Line("Unexpected error occurred");
end Example;
```