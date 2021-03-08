# terraform-ec2-instance


#   Script to install terraform and aws configure:

      
    #!bin/bash
    echo "TERRAFORM INSTALL CHECK"
    echo "====================="
    cd /opt
    wget https://releases.hashicorp.com/terraform/0.14.7/terraform_0.14.7_linux_amd64.zip
    unzip terraform_0.14.7_linux_amd64.zip
    export PATH=$PATH:/opt/
    echo $PATH
    echo 'terraform version ' terraform --version
    echo "AWS CONFIGURE OUTPUT"
    echo "====================="
    aws configure set default.region eu-west-2
    aws configure set aws_access_key_id 'Access Key'
    aws configure set aws_secret_access_key 'Secret key'
    aws configure get region    # its for printing
    aws configure get aws_access_key_id
    aws configure get aws_access_key_id

      


# Please refer the below URL to refer terraform

  export PATH= $PATH: /opt/

https://github.com/logambigaik/terraform-ec2-instance/tree/928630d252d7a1f245052ec2e9b5a68c20c8ce92


https://github.com/budding-devops-blah/devops-practice/tree/learning/Terraform
