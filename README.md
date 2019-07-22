# pen-test-lan
This is a simple Penetration Testing Lab spun up using Terraform and Docker.
This is still a very much work in progress.

## Images Included
- Kali
- Metasploitable

## Prerequisites
Install terraform
Install Docker

## Instructions on spinning it up
 - Clone this repo
 - run `terraform init`
 - run `terraform plan` (optional)
 - run `terraform apply` type `yes` when prompted or run with `-auto-approve` flag

## When you are finished.

- run `terraform destroy -auto-approve`
