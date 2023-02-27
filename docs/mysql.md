# Mysql

## Backup

mysqldump db > db.sql

## Create user

```
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON db.* TO 'user'@'localhost';
```
