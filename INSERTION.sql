/* Service */
INSERT INTO
    Service
VALUES
    (10, 'FINANCE', 'TUNIS');

INSERT INTO
    Service
VALUES
    (30, 'VENTES', 'NABEUL');

INSERT INTO
    Service
VALUES
    (20, 'RECHERCHE', 'ARIANA');

INSERT INTO
    Service
VALUES
    (40, 'FABRICATION', 'MEGRINE');

INSERT INTO
    Service
VALUES
    (60, 'INFORMATIQUE', 'TUNIS');

/* Personne */
TABLE PERSONNE
INSERT INTO
    Personne
VALUES
    (
        7369,
        'MBAREK',
        'SECRETAIRE',
        TO_DATE('22-01-1997', 'DD-MM-YYYY'),
        350,
        20
    );

INSERT INTO
    Personne
VALUES
    (
        7452,
        'BEN ROMDHAN',
        'COMMERCIAL',
        TO_DATE('25-11-2002', 'DD-MM-YYYY'),
        700,
        30
    );

INSERT INTO
    Personne
VALUES
    (
        7477,
        'BEN AYED',
        'INGENIEUR',
        TO_DATE('25-11-2002', 'DD-MM-YYYY'),
        900,
        60
    );

INSERT INTO
    Personne
VALUES
    (
        7499,
        'BOURAOUI',
        'COMMERCIAL',
        TO_DATE('25-11-2002', 'DD-MM-YYYY'),
        750,
        30
    );

INSERT INTO
    Personne
VALUES
    (
        7501,
        'BEN MOUSSA',
        'INGENIEUR',
        TO_DATE('01-04-1993', 'DD-MM-YYYY'),
        800,
        30
    );

INSERT INTO
    Personne
VALUES
    (
        7521,
        'MABROUK',
        'COMMERCIAL',
        TO_DATE('28-02-1999', 'DD-MM-YYYY'),
        800,
        30
    );

INSERT INTO
    Personne
VALUES
    (
        7530,
        'JOUIRA',
        'INGENIEUR',
        TO_DATE('30-06-2003', 'DD-MM-YYYY'),
        700,
        60
    );

INSERT INTO
    Personne
VALUES
    (
        7541,
        'BEN ARFA',
        'ANALYSTE',
        TO_DATE('17-12-1995', 'DD-MM-YYYY'),
        500,
        60
    );

INSERT INTO
    Personne
VALUES
    (
        7566,
        'BEN AHMED',
        'DIRECTEUR',
        TO_DATE('06-06-2002', 'DD-MM-YYYY'),
        1000,
        20
    );

INSERT INTO
    Personne
VALUES
    (
        7654,
        'MARZOUK',
        'COMMERCIAL',
        TO_DATE('24-09-2001', 'DD-MM-YYYY'),
        650,
        30
    );

INSERT INTO
    Personne
VALUES
    (
        7669,
        'TOUMI',
        'SECRETAIRE',
        TO_DATE('22-02-1996', 'DD-MM-YYYY'),
        300,
        30
    );

INSERT INTO
    Personne
VALUES
    (
        7689,
        'ZAYANI',
        'DIRECTEUR',
        TO_DATE('22-02-1996', 'DD-MM-YYYY'),
        1100,
        30
    );

INSERT INTO
    Personne
VALUES
    (
        7782,
        'HSINE',
        'DIRECTEUR',
        TO_DATE('13-03-2000', 'DD-MM-YYYY'),
        1100,
        10
    );

INSERT INTO
    Personne
VALUES
    (
        7788,
        'BEN AYED',
        'INGENIEUR',
        TO_DATE('01-04-1996', 'DD-MM-YYYY'),
        850,
        20
    );

INSERT INTO
    Personne
VALUES
    (
        7839,
        'BEN MABROUK',
        'PDG',
        TO_DATE('27-09-1998', 'DD-MM-YYYY'),
        3000,
        10
    );

INSERT INTO
    Personne
VALUES
    (
        7844,
        'ZARROUK',
        'COMMERCIAL',
        TO_DATE('18-05-1996', 'DD-MM-YYYY'),
        800,
        30
    );

INSERT INTO
    Personne
VALUES
    (
        7876,
        'TLILI',
        'SECRETAIRE',
        TO_DATE('08-06-1996', 'DD-MM-YYYY'),
        310,
        20
    );

INSERT INTO
    Personne
VALUES
    (
        7989,
        'BEN SALEM',
        'DIRECTEUR',
        TO_DATE('13-04-2000', 'DD-MM-YYYY'),
        1300,
        60
    );

INSERT INTO
    Personne
VALUES
    (
        7901,
        'BELHAJ',
        'ABD',
        TO_DATE('16-11-1996', 'DD-MM-YYYY'),
        650,
        60
    );

INSERT INTO
    Personne
VALUES
    (
        7902,
        'CHARFI',
        'INGENIEUR',
        TO_DATE('07-09-1996', 'DD-MM-YYYY'),
        1000,
        20
    );

INSERT INTO
    Personne
VALUES
    (
        7903,
        'HAMZA',
        'SECRETAIRE',
        TO_DATE('16-03-2002', 'DD-MM-YYYY'),
        280,
        30
    );

INSERT INTO
    Personne
VALUES
    (
        7934,
        'CHAHED',
        'SECRETAIRE',
        TO_DATE('17-05-2000', 'DD-MM-YYYY'),
        350,
        10
    );

/* Projet */
INSERT INTO
    Projet
VALUES
    (
        'P20',
        'LIAISON-SPM',
        7698,
        13000,
        100,
        TO_DATE('23-10-2003', 'DD-MM-YYYY')
    );

INSERT INTO
    Projet
VALUES
    (
        'P21',
        'SERVEUR-MAX',
        7788,
        189000,
        120,
        TO_DATE('09-12-2002', 'DD-MM-YYYY')
    );

INSERT INTO
    Projet
VALUES
    (
        'P22',
        'SUPAERONIX',
        7788,
        600000,
        700,
        TO_DATE('16-01-2004', 'DD-MM-YYYY')
    );

INSERT INTO
    Projet
VALUES
    (
        'P279',
        'SERVEUR-XP',
        7902,
        76900,
        340,
        TO_DATE('16-01-2001', 'DD-MM-YYYY')
    );

INSERT INTO
    Projet
VALUES
    (
        'P40',
        'PROPULSEUR AXT',
        7477,
        47655,
        123,
        TO_DATE('18-01-2004', 'DD-MM-YYYY')
    );

INSERT INTO
    Projet
VALUES
    (
        'P54',
        'LIAISON-SP',
        7902,
        128000,
        600,
        TO_DATE('08-06-2002', 'DD-MM-YYYY')
    );

INSERT INTO
    Projet
VALUES
    (
        'P639',
        'LIAISON-REM',
        7788,
        100000,
        400,
        TO_DATE('05-05-2001', 'DD-MM-YYYY')
    );

/* Affecations */
INSERT INTO
    Affecations
VALUES
    (
        7902,
        'P279',
        TO_DATE('19-01-1995', 'DD-MM-YYYY'),
        53
    );

INSERT INTO
    Affecations
VALUES
    (
        7902,
        'P639',
        TO_DATE('07-05-1995', 'DD-MM-YYYY'),
        476
    );

INSERT INTO
    Affecations
VALUES
    (
        7902,
        'P54',
        TO_DATE('09-06-1996', 'DD-MM-YYYY'),
        432
    );

INSERT INTO
    Affecations
VALUES
    (
        7788,
        'P279',
        TO_DATE('20-01-1995', 'DD-MM-YYYY'),
        85
    );

INSERT INTO
    Affecations
VALUES
    (
        7788,
        'P639',
        TO_DATE('17-04-1995', 'DD-MM-YYYY'),
        78
    );

INSERT INTO
    Affecations
VALUES
    (
        7902,
        'P20',
        TO_DATE('18-04-1997', 'DD-MM-YYYY'),
        12
    );

INSERT INTO
    Affecations
VALUES
    (
        7654,
        'P639',
        TO_DATE('18-06-1995', 'DD-MM-YYYY'),
        85
    );

INSERT INTO
    Affecations
VALUES
    (
        7902,
        'P21',
        TO_DATE('14-12-1996', 'DD-MM-YYYY'),
        10
    );

INSERT INTO
    Affecations
VALUES
    (
        7501,
        'P22',
        TO_DATE('14-09-1998', 'DD-MM-YYYY'),
        72
    );

INSERT INTO
    Affecations
VALUES
    (
        7902,
        'P22',
        TO_DATE('14-10-1998', 'DD-MM-YYYY'),
        154
    );

INSERT INTO
    Affecations
VALUES
    (
        7477,
        'P40',
        TO_DATE('20-09-1998', 'DD-MM-YYYY'),
        85
    );