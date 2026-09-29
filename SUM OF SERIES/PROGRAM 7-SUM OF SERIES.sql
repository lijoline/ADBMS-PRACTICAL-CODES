declare
  n number;
  total number := 0;
begin
  n := :input_val;
  for i in 1..n loop
    total := total + 1;
  end loop;
  dbms_output.put_line('Sum of series=' || total);
end;
