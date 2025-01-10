## Create a bucket

```sh
aws s3api create-bucket --bucket acl-example-ag-12421 --region ca-central-1
```

## Turn of Block Public Access for ACLs

```sh
aws s3api put-public-access-block --bucket acl-example-ag-12421 --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=true,RestrictPublicBuckets=true"
```

## Get Public Access Block for ACLs

```sh
aws s3api get-public-access-block --bucket acl-example-ag-12421
```

## Change bucket ownership

```sh
aws s3api put-bucket-ownership-controls --bucket acl-example-ag-12421 --ownership-controls="Rules=[{ObjectOwnership=BucketOwnerPreferred}]"
```

## Change ACLs to allow for a user in another AWS account

```sh
aws s3api put-bucket-acl --bucket acl-example-ag-12421 --access-control-policy file://policy.json
```

## Access bucket from other account

```sh
touch bootcamp.txt
aws s3 cp bootcamp.txt s3://acl-example-ag-12421
aws s3 ls s3://acl-example-ag-12421
```

## Cleanup

```sh
aws s3 rm s3://acl-example-ag-12421/bootcamp.txt
aws s3 rb s3://acl-example-ag-12421
```
