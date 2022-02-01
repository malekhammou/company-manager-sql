/*  Service */
CREATE TABLE Service(
    NumServ NUMBER(2) PRIMARY KEY,
    NomServ VARCHAR2(15) NOT NULL,
    LocServ VARCHAR2(10)
);

/* Personne */
CREATE TABLE Personne(
    NumP NUMBER(4) PRIMARY KEY,
    NomP VARCHAR2(15) NOT NULL,
    PosteP VARCHAR2(12) NOT NULL,
    DateEmbP DATE,
    SalaireP NUMBER(8, 2),
    NumServP NUMBER(2) REFERENCES Service(NumServ)
);

/* Projet */
CREATE TABLE Projet(
    NumProj VARCHAR2(4) PRIMARY KEY,
    TitreProj VARCHAR2(14),
    NumResProj NUMBER(4) REFERENCES Personne(NumP),
    BudgetProj NUMBER(9, 2),
    HeurBudget NUMBER(4),
    DateDeb DATE
);

/* Affectation */
CREATE TABLE Affecations(
    NumPersAff NUMBER(4) REFERENCES Personne(NumP),
    NumProjAff VARCHAR2(4) REFERENCES Projet(NumProj),
    DateAffect DATE,
    NbHeures NUMBER(3),
    CONSTRAINT pka PRIMARY KEY(NumPersAff, NumProjAff)
);