## Create a bucket

```sh
aws s3 mb s3://bucket-policy-ag-1243
```

## Create bucket policy

```sh
aws s3api put-bucket-policy --bucket bucket-policy-ag-1243 --policy file://policy.json
```

## In the other account, access the bucket

```sh
touch bootcamp.txt
aws s3 cp bootcamp.txt s3://bucket-policy-ag-1243
aws s3 ls s3://bucket-policy-ag-1243
```

## Cleanup

```sh
aws s3 rm s3://bucket-policy-ag-1243/bootcamp.txt
aws s3 rb s3://bucket-policy-ag-1243
```
