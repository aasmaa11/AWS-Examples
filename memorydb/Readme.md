## Create Subnet group

```sh
aws memorydb create-subnet-group --subnet-group-name mysubnetgroup --description "my subnet group" --subnet-ids past_subnet_id_here --query SubnetGroup.ARN --output text
```

## Create user

```sh
aws memorydb create-user --user-name my-user --access-string "on ~* &* +@all" --authentication-mode Passwords="Testing12345678910!",Type=password
```

## Create ACL

```sh
aws memorydb create-acl --acl-name my-acl --user-names my-user
```

### Don't use default vpc, create a vpc with subnets

## Create cluster

```sh
aws memorydb create-cluster --cluster-name my-new-cluster --node-type db.t4g.small --acl-name my-acl --sbunet-group mysubnetgroup
```
