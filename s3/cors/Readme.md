# Create website 1

## Create a bucket

```sh
aws s3 mb s3://cors-fun-ag-1243
```

## Change block public access

```sh
aws s3api put-public-access-block --bucket cors-fun-ag-1243 --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBucket=false"
```

## Create bucket policy

```sh
aws s3api put-bucket-policy --bucket cors-fun-ag-1243 --policy file://policy.json
```

## Turn on static website hosting

```sh
aws s3api put-bucket-website --bucket cors-fun-ag-1243 --website-configuration file://website.json
```

## Upload index.html file and include a resource would be cross-origin

```sh
aws s3 cp index.html s3://cors-fun-ag-1243
```

## View website and see if the index.html is there

This for ca-central-1
http://cors-fun-ag-1243.s3-website.ca-central-1.amazonaws.com

Other regions migh use hyphen instead
http://cors-fun-ag-1243.s3-website-ca-central-1.amazonaws.com

# Create website 2

## Create a bucket

```sh
aws s3 mb s3://cors-fun2-ag-1243
```

## Change block public access

```sh
aws s3api put-public-access-block --bucket cors-fun2-ag-1243 --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBucket=false"
```

## Create bucket policy

```sh
aws s3api put-bucket-policy --bucket cors-fun2-ag-1243 --policy file://policy2.json
```

## Turn on static website hosting

```sh
aws s3api put-bucket-website --bucket cors-fun2-ag-1243 --website-configuration file://website.json
```

## Upload js file and include a resource would be cross-origin

```sh
aws s3 cp index.js s3://cors-fun2-ag-1243
```

## Create API Gateway with mock response and then test the enpoint

curl -X POST -H "Content-Type: application/json" APIgatewayendpoint

## Apply a CORS policy on bucket

```sh
aws s3api put-bucket-cors --bucket cors-fun2-ag-1243 --cors-configuration file://cors.json
```

## Cleanup

```sh
aws s3 rm s3://cors-fun-ag-1243/* aws s3 rb s3://cors-fun-ag-1243
aws s3 rm s3://cors-fun2-ag-1243/*
aws s3 rb s3://cors-fun2-ag-1243
```
