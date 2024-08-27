# Example terraform to use existing AWS VPC as DoubleCloud Network

This example illustrates how to create network topology will be used in DoubleCloud BYOC.

## Run configuration
Create VPC at first to import it in BYOC module
```shell
terraform apply -var aws_profile=default -target aws_vpc.byoc
```
Now apply the whole configuration
```shell
terraform apply -var aws_profile=default
```
