# POSTGRES

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
