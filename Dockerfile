FROM ibmcom/db2express-c:10.5.0.5-3.10.0

LABEL maintainer "Cuball0"

	  
COPY createdb.sh /createdb.sh
RUN su - db2inst1 -c /createdb.sh

ENTRYPOINT ["db2start"]
