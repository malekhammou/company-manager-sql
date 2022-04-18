DECLARE CURSOR curseur_emp IS
SELECT
    nomP
from
    Personne
WHERE
    DATEEMBP > '01-JAN-1990'
update
;

begin for e in curseur_sal loop
update
    Personne
set
    salaireP = salaireP * 1.1
where
    current of curseur_sal;

end loop;

end;

-----------------------------------------------
DECLARE nom personne.nomP % type;

begin
SELECT
    nomP into nom
from
    Personne
WHERE
    DATEEMBP > '01-JAN-1990';

EXCEPTION
WHEN TOO_MANY_ROWS then DBMS_OUTPUT.PUT_LINE('Utilisez un curseur');

end;

-----------------------------------------------------
DECLARE myException EXCEPTION;

PRAGMA EXCEPTION_INIT(myException, -01400);

begin
insert into
    service
values
    (10, NULL, 'TUNIS');

EXCEPTION
WHEN TOO_MANY_ROWS then DBMS_OUTPUT.PUT_LINE('Plusieurs utilisateurs');

WHEN NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('Aucun employé');

WHEN myException then DBMS_OUTPUT.PUT_LINE('MESSAGE PERSONALISÉ');

WHEN OTHERS then DBMS_OUTPUT.PUT_LINE('Autre errur');

end;

---------------------------
DECLARE nom personne.nomP % type;

begin
SELECT
    nomP into nom
from
    Personne
WHERE
    salaireP = & numS;

EXCEPTION
WHEN TOO_MANY_ROWS then DBMS_OUTPUT.PUT_LINE('Plusieurs utilisateurs');

WHEN NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('Aucun employé');

WHEN OTHERS then DBMS_OUTPUT.PUT_LINE('Autre errur');

end;

-------------------------------
--RAISE
-------------------------------
ACCEPT nom varchar(20) prompt 'saisir nom';

ACCEPT num NUMBER(20) prompt 'saisir numero';

declare my_exception exception;

begin
update
    Service
set
    nomServ = '&nom'
where
    numServ = & num;

if sql % notfound then raise my_exception;

end if;

EXCEPTION
when my_exception then DBMS_OUTPUT.PUT_LINE('NOT FOUND');

end;

---------
-- raise application error arrête le programme et affiche le message d'erreur--
----------------------------
ACCEPT Salaire NUMBER(20) prompt 'saisir salaire';

declare salaireAff Personne.SalaireP % type;

my_exception exception;

s integer;

begin s := & Salaire;

select
    count (*) into salaireAff
from
    Personne
where
    (
        SalaireP between s -100
        and s + 100
    );

if salaireAff = 0 then raise my_exception;

end if;

Dbms_output.put_line(salaireAff);

exception
when my_exception then raise_application_error(-20222, 'no user');

end;

/ ᐧ