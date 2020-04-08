AWS_PROFILE=myawsprofile
AWS_BUCKET=mybucket
AWS_DIST=mycloudfrontid
aws s3 --profile $AWS_PROFILE rm s3://$AWS_BUCKET/*
aws s3 --profile $AWS_PROFILE sync build s3://$AWS_BUCKET/ --acl public-read
aws cloudfront --profile $AWS_PROFILE create-invalidation --distribution-id $AWS_DIST --paths /index.html