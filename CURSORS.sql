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