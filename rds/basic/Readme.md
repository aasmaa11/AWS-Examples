## Create a Secrets Manager

```sh
aws secretsmanager create-secret \
--name MyRdsPassword \
--description "My rds password" \
--secret-string "{\"user\":\"diegor\",\"password\":\"mypassword\"}"
```
