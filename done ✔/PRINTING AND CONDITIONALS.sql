--SUBTITUTION VARIABLES
ACCEPT age NUMBER PROMPT 'WHAT IS YOUR AGE?';

begin dbms_output.put_line('YOUR AGE IS:' || & age);

end;

-----------------------------------------------------------
--NOTES: 
--1°)SESSION VARIABLES SHOULD BE DECLARED OUTISDE PL-SQL BLOC!!!
--2°)TO REFERENCE THEM INSIDE PL-SQL BLOC? USE ":"
--3°)DISPLAY IS DONE AFTER END; STATEMENT
-------------------------------------------------------------
--EXAMPLE
set
    serveroutput on variable var1 number default 0;

DECLARE num NUMBER(5) := 1;

BEGIN num := num + 5;

:var1 := num;

end;

/ print var1;

-------------------------------------------------------------
variable var1 number;

ACCEPT num NUMBER(5) prompt ' Type please... ';

begin :var1 := & num + 5;

end;

/ print var1;

---------------------------------------------------------------------
--DON'T FORGET!!!!! INSTRUCTIONS OUTSIDE PL-SQL BLOC SHOULD BE EXECUTED SEPARATELY
ACCEPT age NUMBER PROMPT 'What is your age?:';

begin if & age <= 15 then dbms_output.put_line('KID');

else dbms_output.put_line('ADULT');

end if;

end;

/ ----------------------------------------------------TP3---------------------------------------------------------------
ACCEPT num1 NUMBER PROMPT 'Type the first number:';

ACCEPT num2 NUMBER PROMPT 'Type the second number:';

begin if & num1 < & num2 then dbms_output.put_line(& num1 || 'is less than' || & num2);

elsif & num1 > & num2 then dbms_output.put_line(& num1 || 'is greater than' || & num2);

else dbms_output.put_line(& num1 || 'is equal to' || & num2);

end if;

end;

/ ----------------------------------------------------------------------------------------------------------------------------
DECLARE moysal20 NUMBER(8);

salmin20 NUMBER(10);

P Personne % RowType;

BEGIN
select
    AVG(SalaireP) into moysal20
from
    Personne
Where
    numServP = 20;

select
    MIN(SalaireP) into salmin20
from
    Personne
where
    numServP = 20;

select
    * into P
from
    Personne
where
    NumServP = 20
    and SalaireP =(
        select
            min(SalaireP)
        from
            Personne
        where
            NumServP = 20
    );

dbms_output.put_line(
    'The average salary in service 20 is  :' || moysal20
);

dbms_output.put_line(
    'The minimum salary in service 20 is :' || salmin20
);

dbms_output.put_line(
    'Name :' || P.nomP || 'Salary: ' || P.salaireP
);

if moysal20 - salmin20 > 200 then salmin20 := salmin20 * 2;

dbms_output.put_line(
    'Name :' || P.nomP || 'Salary: ' || salmin20
);

end if;

end;

-------------------------------------------------------------------------------------------------------------------------------
DECLARE maxsal NUMBER(8);

minsal NUMBER(10);

P1 Personne % RowType;

P2 Personne % RowType;

BEGIN
select
    MAX(SalaireP) into maxsal
from
    Personne;

select
    MIN(SalaireP) into minsal
from
    Personne;

select
    * into P1
from
    Personne
where
    SalaireP = maxsal;

select
    * into P2
from
    Personne
where
    SalaireP = minsal;

dbms_output.put_line(
    'Name :' || P1.nomP || 'The salary is:' || P1.salaireP
);

dbms_output.put_line(
    'Name :' || P2.nomP || ' The salary is:' || P2.salaireP
);

if minsal < 300 then minsal := minsal * 2;

end if;

if maxsal > 1500 then maxsal := maxsal / 2;

end if;

dbms_output.put_line(
    'Name :' || P1.nomP || 'The salary is:' || maxsal
);

dbms_output.put_line(
    'Name :' || P2.nomP || 'The salary is:' || minsal
);

end;

/ -------------------------------------------------------------------------------------------
ACCEPT age NUMBER PROMPT 'Type your age: ';

begin case
    when & age < 11 then dbms_output.put_line('KID!');

when & age >= 12
and & age <= 18 then dbms_output.put_line('TEENAGER!');

when & age >= 19
and & age <= 59 then dbms_output.put_line('ADULT!');

when & age > 60 then dbms_output.put_line('SENIOR!');

end case
;

end;

/ ----------------------------------------------------------------------------------------------
ACCEPT numserv NUMBER PROMPT 'Type the code of your service: ';

--------------
---------------
DECLARE nbemp NUMBER(8);

salmoy NUMBER(10);

salmax NUMBER(10);

BEGIN
select
    COUNT(numP) into nbemp
from
    Personne
where
    numServP = & numserv;

select
    AVG(salaireP) into salmoy
from
    Personne
where
    numServP = & numserv;

select
    MAX(salaireP) into salmax
from
    Personne
where
    numServP = & numserv;

case
    when & numserv = 10 then dbms_output.put_line(
        'le nombre total d''employés du service ' || & numserv || ' est:' || nbemp
    );

when & numserv = 30 then dbms_output.put_line(
    'le salaire moyen du service ' || & numserv || ' est:' || salmoy
);

when & numserv = 60 then dbms_output.put_line(
    'le salaire maximal du service ' || & numserv || ' est:' || salmax
);

else dbms_output.put_line('AUCUN TRAITEMENT');

end case
;

end;

/