## Create content buckets and upload video

```sh
aws s3 mb s3://srcvideos.example1234.com --region us-east-1
aws s3 mb s3://videos.example1234.com --region us-east-1

aws s3 cp App2Container.mp4 s3://srcvideos.example1234.com/ac2.mp4 --region us-east-1
```

## Create pipeline

```sh
aws elastictranscoder create-pipeline --name my-transcoder-pipeline --input-bucket srcvideos.example1234.com --role arn --content-config file://content-config.json --thumbnail-config file://content-config.json --region us-east-1
```

## Create job

```sh
aws elastictranscoder create-job --pipeline-id paste_id_here --inputs file://inputs.json --outputs file://outputs.json --output-key-prefix "videos/" --user-metadata file://metadata.json --region us-east-1
```

## Job details

```sh
aws elastictranscoder read-job --id paste_job_id --region us-east-1
```
