# Get the Default VPC ID
$defaultVpcId = aws ec2 describe-vpcs --filters "Name=isDefault,Values=true" --query "Vpcs[0].VpcId" --output text

# Get the Subnet IDs within the Default VPC
$subnetIds = aws ec2 describe-subnets --filters "Name=vpc-id,Values=$defaultVpcId" --query "Subnets[*].SubnetId" --output text

# Create a unique stack name
$stackName = "NLBStack-$((Get-Date).Ticks)"

# Create the CloudFormation stack
echo $defaultVpcId
echo $subnetIds
aws cloudformation create-stack `
    --stack-name $stackName `
    --template-body file://nlb.yml `
    --parameters ParameterKey=VpcId,ParameterValue=vpc-076975dddf1a39e0c ParameterKey=SubnetIds,ParameterValue="subnet-05f52a4a887cee805,subnet-044a29a2b1e0d6ae0"


    
    
# Wait for the stack to be created
aws cloudformation wait stack-create-complete --stack-name $stackName

# Get the NLB DNS name
$nlbDnsName = aws cloudformation describe-stacks `
    --stack-name $stackName `
    --query "Stacks[0].Outputs[?OutputKey=='NlbDnsName'].OutputValue" `
    --output text

# Output the NLB DNS name
Write-Output "NLB DNS name: $nlbDnsName"
