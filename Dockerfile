FROM ibmcom/db2express-c:10.5.0.5-3.10.0

LABEL maintainer "Cuball0"

COPY assets/createdb.sh /scripts/createdb.sh 

RUN chmod +x /scripts/createdb.sh
RUN su - db2inst1 -c /scripts/createdb.sh

ENTRYPOINT ["db2start"]