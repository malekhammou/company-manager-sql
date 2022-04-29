--Q1--
CREATE VIEW emp_sec AS
SELECT
    *
from
    Personne
WHERE
    PosteP = 'SECRETAIRE';

--Q2--
insert into
    emp_sec
values
    (
        8001,
        'ZAYANI',
        'INGENIEUR',
        TO_DATE('11-03-05', 'DD-MM-YYYY'),
        900,
        60
    );

insert into
    emp_sec
values
    (
        8005,
        'TLILI',
        'SECRETAIRE',
        TO_DATE('03-09-04', 'DD-MM-YYYY'),
        350,
        10
    );

INSERT INTO
    emp_sec2
VALUES
    (
        8298,
        'MALEK',
        'SECRETAIRE',
        TO_DATE('11-03-05', 'DD-MM-YYYY'),
        900,
        60
    );

--Q4--
CREATE VIEW emp_sec_2 AS
SELECT
    *
from
    Personne
WHERE
    PosteP = 'SECRETAIRE' WITH CHECK OPTION;

--Q5--
CREATE VIEW emp300 AS
SELECT
    *
FROM
    emp_sec_2
WHERE
    SalaireP > 300;

--Q6--
INSERT INTO
    emp300
VALUES
    (
        8010,
        'DAHMANI',
        'SECRETAIRE',
        TO_DATE('23-05-01', 'DD-MM-YYYY'),
        250,
        30
    );