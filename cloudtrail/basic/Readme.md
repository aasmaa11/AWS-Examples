## Create a bucket for CloudTrail logs

```sh
aws s3 mb s3://my-cloudtrail-ag-1234
```

## Create bucket policy to allow CloudTrail to put to bucket

```sh
aws s3api put-bucket-policy --bucket my-cloudtrail-ag-1234 --policy file://policy.json
```

## Create a Trail

```sh
aws cloudtrail create-trail --name MyTrail1 --s3-bucket-name my-cloudtrail-ag-1234 --region ca-central-1
```

## Start logging

```sh
aws cloudtrail start-logging --name MyTrail1
```
