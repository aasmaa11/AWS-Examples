## Create serverless cache

```sh
aws elasticache create-serverless-cache --serverless-cache-name my-cache-ag-1234 --engine redis --major-engine-version 7
```

## Install Redis Client (Ubuntu)

```sh
sudo apt-get install redis -y
```

## Connect to instance

```sh
redis-cli -h my-cache-ag-1234-....cache.amazonaws.com
```
