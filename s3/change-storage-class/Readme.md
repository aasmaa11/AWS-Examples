## Create a bucket

```sh
aws s3 mb s3://class-fun-ab-12421
```

## Create a file

```sh
echo "Hello Mars" > hello.txt
```

## Put file in bucket

```sh
aws s3 cp hello.txt s3://class-fun-ab-12421 --storage-class STANDARD_IA
```

## Cleanup

```sh
aws s3 rm s3://class-fun-ab-12421/hello.txt
aws s3 rb s3://class-fun-ab-12421
```
