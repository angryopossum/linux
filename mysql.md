# Mysql

## Backup

mysqldump db > db.sql

## Create user

```
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT PRIVILEGE ON db.* TO 'user'@'localhost';
```
