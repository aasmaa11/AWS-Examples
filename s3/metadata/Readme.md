## Create a bucket

```sh
aws s3 mb s3://metadata-fun-ab-12421
```

## Create new file

```sh
echo "Hello Mars" > hello.txt
```

## Upload file with metadata

```sh
aws s3api put-object --bucket metadata-fun-ab-12421 --key hello.txt --body hello.txt --metadata Planet=Mars
```

## Get metadata through head object

```sh
aws s3api head-object --bucket metadata-fun-ab-12421 --key hello.txt
```

## Cleanup

```sh
aws s3 rm s3://metadata-fun-ab-12421/hello.txt
aws s3 rb s3://metadata-fun-ab-12421
```
