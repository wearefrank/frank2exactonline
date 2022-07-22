-- When using H2 execute the following through executeJdbcQueryExecute.do

---------------------------------------------------
--   CREATE TABLE IBISSTORE
---------------------------------------------------

CREATE TABLE IBISSTORE
	(
	MESSAGEKEY int identity,
	TYPE CHAR(1),
	SLOTID VARCHAR(100),
	HOST VARCHAR(100),
	MESSAGEID VARCHAR(100),
	CORRELATIONID VARCHAR(256),
	MESSAGEDATE datetime,
	COMMENTS VARCHAR(1000),
	MESSAGE varbinary(max),
	EXPIRYDATE datetime,
	LABEL VARCHAR(100),
	CONSTRAINT PK_IBISSTORE PRIMARY KEY (MESSAGEKEY)
	);
	
CREATE INDEX IX_IBISSTORE ON IBISSTORE (TYPE, SLOTID, MESSAGEDATE);
CREATE INDEX IX_IBISSTORE_02 ON IBISSTORE (EXPIRYDATE);


---------------------------------------------------
--   CREATE TABLE Records
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
;

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
;