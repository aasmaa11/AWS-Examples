## Create a user with no permissions

We need to create a new user with no permissions and generate out access keys

```sh
aws iam create-user --user-name sts-machine-user
aws iam create-access-key --user-name sts-machine-user --output table
```

Copy access key and secret here

```sh
aws configure
```

Then edit credentials file to change away from default profile

open ./~/.aws/creadentials

Test who you are:

```sh
aws sts get-caller-identity
aws sts get-caller-identity --profile sts
```

Make sure you don't have access to S3

```sh
aws s3 ls --profile sts
```

> Access Denied

## Create a role

We need to create a role that will access a new resource

```sh
chmod u+x bin/deploy
./bin/deploy
```

## Use new user credentials and assume role

```sh
aws iam put-user-policy --user-name sts-machine-user --policy-name StsAssumerPolicy --policy-document file://policy.json
```

```sh
aws sts assume-role --role-arn IAMArn --role-session-name s3-sts-fun --profile sts
```

Edit credentials file: add aws_access_key_id, aws_secret_access_key and aws_session_token we got from previous command under [assumed]

```sh
aws sts get-caller-identity --profile assumed
```

```sh
aws s3 ls --profile assumed
```

## Cleanup

Tear down CloudFormation stack via AWS Console

```sh
aws iam delete-access-key --access-key-id getAccessKeyFromCredentialsFile --user-name sts-machine-user
aws iam delete-user-policy --user-name sts-machine-user --policy-name StsAssumePolicy
aws iam delete-user --user-name sts-machine-user
```
