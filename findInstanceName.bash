#!/bin/bash
#Find All EC2 instances
aws ec2 describe-instances --filters "Name=tag:Name,Values=*" --query 'Reservations[].Instances[].[InstanceId,State.Name,LaunchTime,InstanceType,Tags[?Key==`Name`]| [0].Value]' --output text >> resourcesName.txt