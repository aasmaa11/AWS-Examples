## Convert to json

```sh
yq -o json policy.yml > policy.json
```

## Bash script

```sh
./update
```

## Create IAM policy

```sh
aws iam create-policy --policy-name my-fun-policy --policy-document file://policy.json
```

## Attach policy to user

```sh
aws iam attach-user-policy --policy-arn policyArn --user-name username
```

## Deleting policies

```sh
aws iam delete-policy-version --policyArn policyArn --version-id v1
```
