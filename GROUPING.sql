--Q24--
SELECT
    NumServP,
    SUM(SalaireP) AS salaireTotal,
    COUNT(NumP) AS nbEmployees,
    AVG(SalaireP) AS salaireMoyen
FROM
    Personne
GROUP BY
    NumServP;

--Q25--
SELECT
    S.NomServ,
    P.PosteP,
    SUM(P.SalaireP) salaireTotal,
    COUNT(P.NumP) nbEmployees,
    AVG(P.SalaireP) salaireMoyen
FROM
    Personne P,
    Service S
WHERE
    P.NumServP = S.NumServ
GROUP BY
    S.NomServ,
    P.PosteP;

--Q26--
SELECT
    PosteP,
    AVG(SalaireP) avgSal
from
    Personne
GROUP BY
    PosteP
HAVING
    AVG(SalaireP) = (
        SELECT
            MIN(AVG(SalaireP))
        from
            Personne
        GROUP BY
            PosteP
    );