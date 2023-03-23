#!/bin/bash

##########################
# Author: Prannoy Saraf
# Date: 23-03-2023
#
# Version: v1
#
# This script will report the AWS report usage
###############################################

set -x  # This will put your script in debug mode

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM users

# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls

# list ec2 instances
echo "print list of ec2 instance ID only"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "print list of lambda functions"
aws lambda list-functions

# list iam users
echo "print list of iam users"
aws iam list-users
