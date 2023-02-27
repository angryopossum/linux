## Шифрование файлов

Симметричное шифрование/дешифрование файла (удобно, например, для хранения паролей):

```
gpg -o nonsense.gpg --cipher-algo AES -a -c nonsense.txt
gpg -o nonsense2.txt -d nonsense.gpg

```
