# terraform-module-aws_instance

## Purpose
The purpose of this module is to deploy EC2 instance in AWS, using Terraform AWS provider

## Requirements
To ensure proper authentication with AWS and location on EC2, module expects following environment variables to be defined:
* AWS_ACCESS_KEY
* AWS_SECRET_ACCESS_KEY
* AWS_REGION / AWS_DEFAULT_REGION

If you are using **localy Terraform open source** on MAC/Linux platform or with **Terraform Cloud CLI driven run** you can achieve this by running following commands in terminal:
```
export AWS_ACCESS_KEY=         
