---------------------------------------------------
--   CREATE TABLE IBISSTORE
---------------------------------------------------

CREATE TABLE IBISSTORE
(
  MESSAGEKEY     NUMBER(10),
  TYPE           CHAR(1 CHAR),
  SLOTID         VARCHAR2(100 CHAR),
  HOST           VARCHAR2(100 CHAR),
  MESSAGEID      VARCHAR2(100 CHAR),
  CORRELATIONID  VARCHAR2(256 CHAR),
  MESSAGEDATE    TIMESTAMP(6),
  COMMENTS       VARCHAR2(1000 CHAR),
  MESSAGE        BLOB,
  EXPIRYDATE     TIMESTAMP(6),
  LABEL          VARCHAR2(100 CHAR)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


CREATE UNIQUE INDEX PK_IBISSTORE ON IBISSTORE
(MESSAGEKEY)
LOGGING
NOPARALLEL;


CREATE INDEX IX_IBISSTORE ON IBISSTORE
(TYPE, SLOTID, MESSAGEDATE)
LOGGING
NOPARALLEL;


CREATE INDEX IX_IBISSTORE_02 ON IBISSTORE
(EXPIRYDATE)
LOGGING
NOPARALLEL;


ALTER TABLE IBISSTORE ADD (
  CONSTRAINT PK_IBISSTORE
 PRIMARY KEY
 (MESSAGEKEY));

---------------------------------------------------
--   CREATE TABLE Record
---------------------------------------------------

CREATE TABLE Records
(
  RECORDID int identity,
  TENANTNAME varchar(max),
  JOBID varchar(max),
  SOURCEAPPLICATIONID varchar(max),
  PROCESSINGAPPLICATIONID varchar(max),
  DOCUMENTID varchar(max),
  EVENTID varchar(max),
  TIMESTAMP timestamp,
  CATEGORY varchar(max),
  LABEL varchar(max),
  VALUE varchar(max)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;
---------------------------------------------------
--   CREATE TABLE UserKeys
---------------------------------------------------

CREATE TABLE UserKeys
(
  USERKEYID int identity,
  RECORDID int,
  LABEL varchar(max),
  VALUE varchar(max),
  FOREIGN KEY (RECORDID) REFERENCES Records(RECORDID)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;

--------------------------------------------------------
--  CREATE SEQUENCE SEQ_IBISSTORE
--------------------------------------------------------

CREATE SEQUENCE SEQ_IBISSTORE
  START WITH 12345
  MAXVALUE 999999999999999999999999999
  MINVALUE 1
  NOCYCLE
  CACHE 20
  NOORDER;
  
--------------------------------------------------------
--  CREATE SEQUENCE SEQ_IBISDATA
--------------------------------------------------------

CREATE SEQUENCE SEQ_IBISDATA
  START WITH 34567
  MAXVALUE 999999999999999999999999999
  MINVALUE 1
  NOCYCLE
  CACHE 20
  NOORDER;

--------------------------------------------------------
--  CREATE SEQUENCE SEQ_IBISTEMP
--------------------------------------------------------

CREATE SEQUENCE SEQ_IBISTEMP
  START WITH 56789
  MAXVALUE 999999999999999999999999999
  MINVALUE 1
  NOCYCLE
  CACHE 20
  NOORDER;


commit;
exit