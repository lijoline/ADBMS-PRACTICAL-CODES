declare
  a number := :input_val;
  f number := 1;
begin 
  while (a > 0) loop 
  f := f * a;
  a := a - 1;
  end loop;
  dbms_output.put_line('Factorial is' || f);
end;
