## Write to the file

```sh
echo "Hello Mars" > myfile.txt
```

## Get checksum of a file for md5

```md
md5sum myfile.txt
```

## Upload our file and look at its etag

```
aws s3 cp myfile.txt s3://checksums-examples-ab-2342
aws  s3api head-objects --bucket checksums-examples-ab-2342 --key myfile.txt
```

## Let's upload a file with a different kind of checksum

Using a library

```sh
sha1sum myfile.txt
```

```sh
aws s3api put-object \
--bucket="checksums-examples-ab-2342" \
--key="myfilesha1.txt" \
--body="myfile.txt" \
--checksum-algorithm="SHA1" \
--checksum-sha1="e7c80b87" \
```
