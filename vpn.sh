#! bin/bash
For REGION in $(aws ec2 describe-vpcs --region $REGION | jq ".Vpcs[].VpcId" | tr -d '"')
    echo "-----------------------COMPLETED-------------------------------------------"
    DONE

#! bin/bash
For REGION in $(aws ec2 describe-regions | jq ".Regions[].RegionName" | tr -d '"')
    echo"---------------------------COMPLETED-----------------------------------"
    aws ec2 describe-vpccs --region $REGION | jq "Vpcs[].VpcId" | tr -d '"'
    echo"-----------------Completed-------------------------"
    DONE
