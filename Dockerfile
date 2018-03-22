FROM ibmcom/db2express-c:10.5.0.5-3.10.0

LABEL maintainer "Cuball0"

 
COPY docker-entrypoint_extra_db.sh /entrypoint_extra_db.sh

RUN chmod +x /entrypoint_exta_db.sh
ENTRYPOINT ["/entrypoint_extra_db.sh"]
