FROM mysql:5.7.23

# enable utf8mb4 for atlassian-jira database

COPY "mysqld.cnf" "/etc/mysql/mysql.conf.d/mysqld.cnf"

RUN chmod 644 "/etc/mysql/mysql.conf.d/mysqld.cnf"
