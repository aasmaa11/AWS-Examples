## Create a bucket

```sh
aws s3 mb s3://encryption-fun-ag-1243
```

## Create a file

```sh
echo "Hello World" > hello.txt
aws s3 cp hello.txt s3://encryption-fun-ag-1243
```

## Put object with encryption SSE-S3

```sh
aws s3api put-object --bucket encryption-fun-ag-1243 --key hello.txt --body hello.txt --server-side-encryption aws:kms --ssekms-key-id [KMS_key_id]
```

## Put object with encryption SSE-C [Failed attempt]

```sh
export BASE64_ENCODED_KEY=$(openssl rand -base64 32)
echo $BASE64_ENCODED_KEY

export MD5_VALUE=$(echo $BASE64_ENCODED_KEY | md5sum | awk '{print $1}' | base64 -w0)
echo $MD5_VALUE

aws s3api put-object --bucket encryption-fun-ag-1243 --key hello.txt --body hello.txt --sse-customer-algorithm AES256 --sse-customer-key $BASE64_ENCODED_KEY --sse-customer-key-md5 $MD5_VALUE
```

## Put object with SSE-C with AWS S3

```sh
openssl rand -out ssec.key 32

aws s3 cp hello.txt s3://encryption-fun-ag-1243 /hello.txt --sse-c AES256 --sse-c-key fileb://ssec.key
```
