# create an S3 bucket
aws s3 mb s3://codigo-morsa-sam

# create cloudformation package
aws cloudformation package --s3-bucket codigo-morsa-sam \
--template-file template.yaml \
--output-template-file gen/template-generated.yaml

# deploy 
aws cloudformation deploy \
--template-file ./gen/template-generated.yaml \
--stack-name hello-world-sam \
--capabilities CAPABILITY_IAM