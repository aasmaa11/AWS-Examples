## Create a bucket

```sh
aws s3 mb s3://encrypt-client-fun-ag-1243
```

## Run our SDK ruby script and upload

```sh
bundle exec ruby encrypt.rb
```

## Cleanup

```sh
aws s3 rm s3://encrypt-client-fun-ag-1243/hello.txt
aws s3 rb s3://encrypt-client-fun-ag-1243
```
