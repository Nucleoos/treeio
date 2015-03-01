. /usr/lib/oracle/xe/app/oracle/product/10.2.0/server/bin/oracle_env.sh

# Conect database with sysdba

sqlplus / as sysdba <<EOF

# create user for treeio 

CREATE USER treeio IDENTIFIED BY treeio;

# Add privileges for user treeio

GRANT  connect, resource to treeio;
GRANT  create session TO treeio;
GRANT  create table TO treeio;
GRANT  create view TO treeio;
GRANT  create any trigger TO treeio;
GRANT  create any procedure TO treeio;
GRANT  create sequence TO treeio;
GRANT  create synonym TO treeio;
GRANT  select on sys.dba_pending_transactions to treeio;
GRANT  select on sys.pending_trans$ to treeio;
GRANT  select on sys.dba_2pc_pending to treeio;
GRANT  execute on sys.dbms_system to treeio;
exit
