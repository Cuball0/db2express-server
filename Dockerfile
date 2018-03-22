FROM ibmcom/db2express-c:10.5.0.5-3.10.0

RUN su - db2inst1 -c "db2 create database $DATABASE_NAME"