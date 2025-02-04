```ada
procedure Example is
   subtype My_Sub_Type is Integer range 1..10;
   My_Variable : My_Sub_Type := 1;
begin
   My_Variable := My_Variable + 5;
   if My_Variable > 10 then
      raise Constraint_Error;
   end if;
   Put_Line("My_Variable: " & My_Variable'Image);
exception
   when Constraint_Error =>
      Put_Line("Constraint Error: Value out of range");
end Example;
```