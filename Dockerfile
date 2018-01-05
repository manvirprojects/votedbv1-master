#VOTEDB:V1
# Base image

FROM mariadb:10.1
# Environment variables

ENV 	MYSQL_ROOT_PASSWORD india@123
ENV 	MYSQL_DATABASE vote_dbv1
COPY 	source.sql /docker-entrypoint-initdb.d/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]
