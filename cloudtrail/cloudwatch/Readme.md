## Create CloudWatch Log and Stream

```sh
aws logs create-log-group --log-group-name mycloudtrail

```

## Update trail for CloudWatch Logs

```sh
aws cloudtrail update-trail --name MyTrail1 --cloud-watch-logs-log-group-arn paste-arn-here --cloud-watch-logs-role-arn paste-role-arn-here

```
