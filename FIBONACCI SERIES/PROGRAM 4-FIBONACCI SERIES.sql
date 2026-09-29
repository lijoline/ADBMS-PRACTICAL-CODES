declare 
  first number := 0; 
  second number := 1;
  a number;
  n number := :input_val;
  i number;
begin
  dbms_output.put_line(' fibonacci series:');
  dbms_output.put_line(first);
  dbms_output.put_line(second);
  for i in 2..n
loop
    a := first + second;
    first := second;
    second := a;
    dbms_output.put_line(a);
end loop;
end;
