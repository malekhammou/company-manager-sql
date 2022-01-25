--Q16--
SELECT
    NomP
from
    Personne
WHERE
    SalaireP > (
        SELECT
            AVG(SalaireP)
        from
            Personne
    );

--Q17--
SELECT
    NomP
from
    Personne
WHERE
    NumServP =(
        SELECT
            NumServ
        FROM
            Service
        WHERE
            NomServ = 'FINANCE'
    );

--Q18--
SELECT
    COUNT(NumP)
from
    Personne
WHERE
    NumServP = (
        SELECT
            NumServ
        FROM
            Service
        WHERE
            NomServ = 'RECHERCHE'
    )
    AND NumP IN (
        SELECT
            NumPersAff
        from
            Affectation
    );

--Q19--
SELECT
    NomP
FROM
    Personne
WHERE
    SalaireP > (
        SELECT
            SalaireP
        from
            Personne
        WHERE
            NomP = 'CHARFI'
    );

--Q20--
SELECT
    NomP
from
    Personne
WHERE
    NOT EXISTS (
        SELECT
            *
        FROM
            Projet
        WHERE
            NOT EXISTS (
                SELECT
                    *
                FROM
                    Affectation
                WHERE
                    NumP = NumPersAff
                    AND NumProjAff = NumProj
            )
    );

--