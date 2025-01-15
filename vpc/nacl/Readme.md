## Create our vpc

VPC_ID=$(aws ec2 create-vpc --cidr-block "172.1.0.0/16" --region ca-central-1 --tag-specifications 'ResourceType=vpc,Tags[{Key=Name,Value=my-vpc-4}]' --region ca-central-1 --query Vpc.VpcId --output text)

echo $VPC_ID

## NACL

```sh
aws ec2 create-network-acl --vpc-id $VPC_ID
```

## Add entry

```sh
aws ec2 create-network-acl-entry --network-acl-id acl-xxxx --ingress --rule-number 90 --protocol -1 --port-range From=0,To=65535 --cidr-block 174.5.108.3/32 --rule-action deny
```

## Get AMI for Amazon Linux 2

Grab latest AMI

```sh
aws ec2 describe-images --owners amazon --filters "Name=name,Values=amzn2-ami-hvm-* -x86_64-gp2" "Name=state,Values=available" --query "Images[?starts_with(Name, 'amzn2')]|sort_by(@, &CreationDate)[-1].ImageId" --region ca-central-1 --output text
```

##
