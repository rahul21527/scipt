#!/bin/bash
date
# echo "Args: $@"
env
# echo "jobId: $AWS_BATCH_JOB_ID"

mkdir -p /scratch/arp
cd /scratch/arp

curl -o x.mov "https://amagik8storage.blob.core.windows.net/amagicloud-archival/AMG_001/00-0d-3a-11-53-b7/2018/04/13/05/1523595857_4800.ts"
AWS_ACCESS_KEY_ID=$S3_KEY AWS_SECRET_ACCESS_KEY=$S3_SECRET aws s3 cp x.mov s3://$S3_BUCKET/$S3_INGEST
rm -rf /scratch/arp

date
echo "bye bye!!"
