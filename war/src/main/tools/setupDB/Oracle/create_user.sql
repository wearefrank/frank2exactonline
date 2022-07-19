Drop user frank2exactonline_user cascade;

Create user frank2exactonline_user identified by frank2exactonline_user default tablespace users; 

Grant dba to frank2exactonline_user;
Grant resource to frank2exactonline_user;
Grant connect to frank2exactonline_user;

DROP ROLE ROLE_ING_WEBSPHERE_XA;
CREATE ROLE ROLE_ING_WEBSPHERE_XA;
GRANT SELECT ON SYS.DBA_PENDING_TRANSACTIONS TO ROLE_ING_WEBSPHERE_XA;
GRANT SELECT ON SYS.DBA_2PC_PENDING TO ROLE_ING_WEBSPHERE_XA;
GRANT EXECUTE ON SYS.DBMS_SYSTEM TO ROLE_ING_WEBSPHERE_XA;
GRANT SELECT ON SYS.PENDING_TRANS$ TO ROLE_ING_WEBSPHERE_XA;

Grant ROLE_ING_WEBSPHERE_XA to testiaf_user;

-- http://docs.codehaus.org/display/BTM/FAQ
grant select on sys.dba_pending_transactions to frank2exactonline_user;
grant select on sys.pending_trans$ to frank2exactonline_user;
grant select on sys.dba_2pc_pending to frank2exactonline_user;
grant execute on sys.dbms_system to frank2exactonline_user;

commit;
exit