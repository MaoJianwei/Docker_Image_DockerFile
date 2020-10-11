# Mysql
### Changes from 5.7.23
make some custom configs to ***/etc/mysql/mysql.conf.d/mysqld.cnf***, which is recommended by Atlassian Jira 8.x
```
[mysqld]
...
...
default-storage-engine=INNODB
character_set_server=utf8mb4
innodb_default_row_format=DYNAMIC
innodb_large_prefix=ON
innodb_file_format=Barracuda
innodb_log_file_size=2G
sql_mode = NO_AUTO_VALUE_ON_ZERO
```
