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

--Q9--
SELECT
    NomP
from
    Personne
WHERE
    NumServP NOT IN (10, 20, 60);

--Q10--
SELECT
    NomP,
    PosteP,
    SalaireP
from
    Personne
ORDER BY
    PosteP,
    SalaireP DESC;

--Q11--
SELECT
    COUNT(DISTINCT NumREsProj)
FROM
    Projet;

--Q12--
SELECT
    MAX(SalaireP)
FROM
    Personne
WHERE
    PosteP = 'INGENIEUR';

--Q13--
SELECT
    AVG(SalaireP)
from
    Personne
WHERE
    PosteP = 'SECRETAIRE';

--Q14--
SELECT
    NomP
FROM
    Personne
WHERE
    DateEmbP =(
        SELECT
            MIN(DateEmbP)
        FROM
            Personne
    );

--Q15--
SELECT
    NomP
from
    Personne
WHERE
    NomP LIKE '_E%M';