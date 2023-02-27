# POSTGRES

## Create user

```
CREATE USER dbuser CREATEDB LOGIN ENCRYPTED PASSWORD 'q1w2e3r4';
```
проверка ролей
```
postgres=#\du
```

## Backup


```
pg_dumpall > db.out
```
```
pd_dump -Fc mydb > mydb.dump
```


## Restore

```
psql -f db.out postgres
```
```
createdb mydb
pg_restore -d mydb mydb.dump
```
