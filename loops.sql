set
    serverouput on DECLARE numService NUMBER(5);

counter NUMBER(2) := 1;

select
    MAX(numServ) into numService
from
    Service;

loop
insert into
    Service
values
    (numService + counter, 'LoopMan', 'loopCity');

counter := counter + 1;

exit
when counter > 3;

end loop;

end;

/ ------------------------------------
DECLARE numService NUMBER(5);

counter NUMBER(2) := 1;

begin
select
    MAX(numServ) into numService
from
    Service;

while counter <= 3 loop
insert into
    Service
values
    (numService + counter, 'LoopMan', 'loopCity');

counter := counter + 1;

end loop;

end;

/ -----------------------------------------
begin for cnt in 72..81 loop
delete from
    Service
where
    NumServ = cnt;

end loop;

end;

/