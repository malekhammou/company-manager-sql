--Q21--
SELECT
    NumProj
FROM
    Projet,
    Affectation A1,
    Affectation A2
WHERE
    NumProj = A1.NumProjAff
    AND A1.NumPersAff = 7501
    AND A2.NumPersAff = 7902
    AND A1.NumProjAff = A2.NumProjAff;

--Q22--
SELECT
    DISTINCT(NumP)
from
    Personne,
    Affectation A1,
    Affectation A2
WHERE
    NomP = 'BEN AYED'
    AND PosteP = 'INGENIEUR'
    AND NumP = A1.NumPersAff
    AND A1.NumProjAff = A2.NumProjAff
    AND A1.NumPersAff != A2.NumPersAff;

--Q23--
SELECT
    NomP
FROM
    Personne,
    Service
WHERE
    NumServ = NumServP
    AND NomServ = 'RECHERCHE'
    AND PosteP IN ('DIRECTEUR', 'SECRETAIRE');