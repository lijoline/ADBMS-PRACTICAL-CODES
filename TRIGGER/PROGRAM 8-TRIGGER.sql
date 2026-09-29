create table voter(vid number(10), vname varchar(20), vcity varchar(20));
insert into voter values(20001,'mouna','Pondy');
insert into voter values(30001,'Nive','Panruti');
insert into voter values(40001,'Nice','Villupuram');
insert into voter values(50001,'Prema','Madurai');
insert into voter values(60001,'Ragul','Panruti');
select * from voter;
create or replace trigger tdel
after update or delete on voter
declare
  vmsg varchar(20) := 'Trigger Fired';
begin
  if updating then
  dbms_output.put_line(vmsg || 'Record updated');
elsif deleting then
  dbms_output.put_line(vmsg || 'Record Deleted');
end if;
end tdel;
