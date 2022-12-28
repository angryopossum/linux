# RSYNC

## Example

-n DRY RUN

```
rsync -avhz /tmp/dir1 server:/tmp
rsync -avhz --delete -n /tmp/dir1 docker:/tmp
rsync -avhz --delete --exclude={'test2','test3'} -n /tmp/dir1 docker:/tmp
```

[rsync script](scripts/rsync_dir.sh)

