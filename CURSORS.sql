DECLARE Nompers Personne.nomP % type;

Salairepers Personne.salaireP % type;

Postepers Personne.posteP % type;

begin
select
    nomP,
    posteP,
    salairep into Nompers,
    Postepers,
    Salairepers
from
    Personne
where
    NumServP = 20;

end;

/ ---------exact fetch returns more than requested number of rows-------
----curseur explicite
----curseur implicite
------------------------------------------------------
-- SQL % ROWCOUNT will return the number of affected rows by the last query
variable lignes_modif varchar2(50);

begin
update
    Personne
set
    salaireP = salaireP + 10
where
    salaireP < 350;

:lignes_modif := 'Il y''a' || SQL % ROWCOUNT || ' lignes modifiées';

end;

/ print lignes_modif;

-------------------------------
DECLARE CURSOR curseur_pers IS
SELECT
    Nump,
    Nomp
from
    Personne
WHERE
    NumServP = 20;

numero personne.Nump % type;

nom personne.nomP % type;

begin open curseur_pers;

loop fetch curseur_pers into numero,
nom;

EXIT --%NOTFOUND means that  there are no more records in the cursor 
WHEN curseur_pers % NOTFOUND;

DBMS_OUTPUT.PUT_LINE(
    'le numero est: ' || numero || ' le nom est ' || nom
);

end loop;

close curseur_pers;

end;

/ --------------------------------
DECLARE CURSOR curseur_emp IS
SELECT
    Nump,
    Nomp,
    salaireP
from
    Personne
WHERE
    salaireP < 400;

numero personne.Nump % type;

nom personne.nomP % type;

salaireAV personne.salaireP % type;

salaireAP personne.salaireP % type;

begin open curseur_emp;

loop fetch curseur_emp into numero,
nom,
salaireAV;

update
    Personne
set
    salaireP = salaireP + 5
where
    numP = numero;

salaireAP := salaireAV + 5;

EXIT
WHEN curseur_emp % NOTFOUND;

DBMS_OUTPUT.PUT_LINE(
    'le numero est: ' || numero || ' le nom est: ' || nom || ' le  salaire est: ' || salaireAV
);

DBMS_OUTPUT.PUT_LINE(
    'le numero est: ' || numero || ' le nom est: ' || nom || ' le nouveau salaire est: ' || salaireAP
);

end loop;

close curseur_emp;

end;

----------------------------------------------
DECLARE CURSOR curseur_emp IS
SELECT
    Nump,
    Nomp,
    salaireP
from
    Personne
WHERE
    salaireP > 1000;

begin for e in curseur_emp loop DBMS_OUTPUT.PUT_LINE(
    'le numero est: ' || e.numP || ' le nom est: ' || e.nomP || ' le  salaire est: ' || e.salaireP
);

end loop;

end;

-------------------------------------
--CURSOR WITH PARAMETER
ACCEPT numS NUMBER PROMPT 'PLEASE TYPE THE DEPARTMENT SERVICE?';

DECLARE CURSOR curseur_serv(numS NUMBER) IS
SELECT
    Personne.Nomp,
    Affectation.NumProjAff
from
    Personne,
    Affectation
WHERE
    Personne.NumServP = numS
    and Affectation.NumPersAff = Personne.NumP;

begin for e in curseur_serv(& numS) loop DBMS_OUTPUT.PUT_LINE(
    'le nom est: ' || e.NomP || ' . Il est affecté au projet : ' || e.NumProjAff
);

end loop;

end;

----------
--NESTED CURSORS
ACCEPT numS NUMBER PROMPT 'PLEASE TYPE THE DEPARTMENT SERVICE? ';

DECLARE CURSOR curseur_serv(numS NUMBER) IS
SELECT
    Personne.Nomp,
    Personne.Nump
from
    Personne
WHERE
    Personne.NumServP = numS;

CURSOR curseur_Proj(numP NUMBER) IS
SELECT
    NumProjAff,
    NumPersAff
from
    Affectation,
    Personne
WHERE
    Personne.NumP = Affectation.NumPersAff;

begin for e in curseur_serv(& numS) loop for e2 in curseur_Proj(e.numP) loop if e.NumP = e2.NumPersAff then DBMS_OUTPUT.PUT_LINE(
    'le nom est: ' || e.NomP || ' . Il est affecté au projet : ' || e2.NumProjAff
);

end if;

end loop;

end loop;

end;

----------- FOR UPDATE-------
declare cursor c1 is...........for
update
    no wait;

begin open c1loop...
update
    table
set
    fffff
where
    CURRE ? T of c1 ----------------------------------
    ---------------------
    DECLARE CURSOR curseur_sal IS
SELECT
    salaireP
from
    Personne
WHERE
    NumServP = 10 FOR
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

----------------------------ROWCOUNT------------
DECLARE CURSOR curseur_serv IS
SELECT
    nomP
from
    Personne
WHERE
    NumServP = 10;

nom personne.nomP % type;

begin open curseur_serv;

loop fetch curseur_serv into nom;

EXIT
WHEN curseur_serv % ROWCOUNT > 6
or curseur_serv % NOTFOUND;

DBMS_OUTPUT.PUT_LINE(nom);

end loop;

close curseur_serv;

end;