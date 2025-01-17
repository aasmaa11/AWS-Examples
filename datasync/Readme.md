## Create destination and source bucket

```sh
aws s3 mb s3://source-datasync-4255
aws s3 mb s3://dest-datasync-4255
```

## Upload file

```sh
touch hello.txt
aws s3 cp hello.txt s3://source-datasync-4255/data/hello.txt
```
