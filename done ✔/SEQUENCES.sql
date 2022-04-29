--COURS--
--1)--
CREATE SEQUENCE serv_id INCREMENT BY 1 START WITH 61;

--2)--
INSERT INTO
    Service
VALUES
    (serv_id.NEXTVAL, 'FINANCE', 'MEGRINE');

--3)--
SELECT
    serv_id.CURRVAL
FROM
    SYS.dual;

--4)--
ALTER SEQUENCE serv_id INCREMENT BY 3;

INSERT INTO
    Service
VALUES
    (serv_id.NEXTVAL, 'SALES', 'OSLO');

INSERT INTO
    Service
VALUES
    (serv_id.NEXTVAL, 'SALES', 'LAGOS');

INSERT INTO
    Service
VALUES
    (serv_id.NEXTVAL, 'MANAGEMENT', 'TANZANIA');

------------------------------------------------
CREATE SEQUENCE seq INCREMENT BY 2 START WITH 1 MAXVALUE 200;

-----
ALTER SEQUENCE seq INCREMENT BY 1;

-----------------------
ALTER SEQUENCE seq CACHE 30;

---------------------------
CREATE TABLE Test_seq(id NUMBER(3) PRIMARY KEY);

-----------------------------
INSERT INTO
    Test_seq
VALUES
    (seq.NEXTVAL);

---------------------------