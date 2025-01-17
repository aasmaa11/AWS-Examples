## Build image

```sh
docker build -t app
```

## Register Job

```sh
aws batch register-job-definition --job-definition-name square-job --type container --container-properties '{"image": "paste_uri_here", "vcpus": 1, "memory": 128}'
```

## Create compute environement in console

## Create queue

```sh
aws batch create-job-queue --job-queue-name my-job-queue --state ENABLED --priority 10 --compute-environment-order order=1,computeEnvironment="paste_ARN_here"
```

## Submit job

```sh
aws batch submit-job --job-name my-job --job-definition square-job --job-queue my-job-queue
```
