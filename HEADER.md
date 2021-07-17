# Bridge

Creates a secure connection between the `PRODUCTION` and the `INTERNAL` accounts for the applications deployed on a EC2 instance.

The diagram below shows the setup:

PENDING IMAGE

The `bridge-nlb` contains a Listener attached to the EC2 Instance services on the 80 port.

The `bridge-service` is a VPC Endpoint Service that links with the NLB and allows connections from the `INTERNAL` accoount.

On the `INTERNAL` account, there is a VPC Endpoint, `bridge-endpoint` that creates an endpoint from the service on the `PRODUCTION` account.

A Route 53 component contains records for each region just to provide a friendly DNS name for the services installed on the EC2 Instance services on the `PRODUCTION` account.

## Pre-flight

On the `PRODUCTION` side (source):

 - VPC Id
 - Subnet Ids
 - Instance Id
 - Service Allowed Principal ARN (Target Account)

On the `INTERNAL` side (target):

 - VPC Id
 - Subnet Ids
 - Hosted Zone Id
