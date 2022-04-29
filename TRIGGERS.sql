CREATE
OR REPLACE TRIGGER contrainte BEFORE DELETE ON Affectation FOR EACH ROW begin raise_application_error(-20222, 'no deletion allowed!!');

end;

/ -- dans lacondition on ne met pas : , on les met dans le programme principal (:old,:new)
----------
CREATE
OR REPLACE TRIGGER logging BEFORE DELETE ON Affectation FOR EACH ROW begin DBMS_OUTPUT.PUT_LINE(
    'Vous avez supprimé la personne numero' || :old.numPersAff
);

end;

/ -------------------------------
CREATE
OR REPLACE TRIGGER ctrl_insertion BEFORE
INSERT
    ON Personne FOR EACH ROW
    WHEN(new.DATEEMBP > SYSDATE) begin raise_application_error(-20222, 'INVALID HIRING DATE');

end;

INSERT INTO
    Personne
VALUES
    (
        7989,
        'BEN SALEM',
        'DIRECTEUR',
        TO_DATE('13-04-2025', 'DD-MM-YYYY'),
        1300,
        60
    );

----------------------------------------------------
----------------------------------------------------
CREATE
OR REPLACE TRIGGER ctrl_salaire BEFORE
INSERT
    OR
UPDATE
    ON Personne FOR EACH ROW DECLARE minSal number;

maxsal number;

BEGIN
select
    max(salaireP) into maxsal
from
    Personne;

select
    min(salaireP) into minsal
from
    Personne;

if(
    :new.salaireP > maxsal
    or :new.salaireP < minsal
) then raise_application_error(-20222, 'INVALID Salary');

end if;

end;

INSERT INTO
    Personne
VALUES
    (
        7989,
        'BEN SALEM',
        'DIRECTEUR',
        TO_DATE('13-04-2000', 'DD-MM-YYYY'),
        30000,
        60
    );