--Q3--
ALTER TABLE
    Service
MODIFY
    NomServ VARCHAR2(16);

--Q4--
SELECT
    NomP,
    NumP
FROM
    Personne
WHERE
    NumServP IN (20, 30);

--Q5--
SELECT
    NomServ
FROM
    Service
WHERE
    locServ = 'TUNIS';

--Q6--
SELECT
    NumResProj
from
    Projet;

--Q7--
SELECT
    NomP,
    SalaireP
from
    Personne
WHERE
    SalaireP BETWEEN 500
    AND 1500;

--Q8--
SELECT
    NomP
from
    Personne
WHERE
    NumServP = 10
    and PosteP IN ('DIRECTEUR', 'SECRETAIRE');