#!/bin/bash
# (c) Alex Bortok dev@bortok.com
# Based on https://gist.github.com/codeinthehole/ab9a8dc30917c5705846

INSTANCE_ID=$(ec2metadata --instance-id)
REGION=$(curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | grep region | awk -F\" '{print $4}')

KEY=LS_IMPORT_DATE

TAG_VALUE=$(aws ec2 describe-tags --filters "Name=resource-id,Values=$INSTANCE_ID" "Name=key,Values=$KEY" --region=$REGION --output=text | cut -f5)

TZ="America/Los_Angeles" date "+%Y-%m-%d" --date="$TAG_VALUE"