## Download Oliver Twist book and split it

## Create S3 bucket

```sh
aws s3 mb s3://kendra-exp-123 \
--region us-east-1

aws s3 cp oliver-twist.pdf s3://kendra-exp-123 \
--region us-east-1
```

## Create our Index

```sh
aws kendra create-index \
--edition DEVELOPER_EDITION \
--name my-index \
--description "My index" \
--region us-east-1 \
--role-arn arn:aws:iam:paste-arn
```

## Create our Data Source

```sh
aws kendra create-data-source \
--index-id paste-index-id \
--name my-data-source \
--role-arn arn:aws:iam:account-id:role/KendraDataSourceRole \
--type S3 --configuration '{"S3Configuration":{"BucketName": "kendra-exp-123"}} \
--region us-east-1
```

## Sync

```sh
aws kendra start-data-source-sync-job \
--id paste-data-source-id-here \
--index-id paste-id-here
```

## Query

```sh
aws kendra query --index-id paste-index-id-here --query-text "You can talk as you eat, can't you?" --region us-east-1
```
