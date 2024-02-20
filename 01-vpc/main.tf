module "roboshop" {
    #source = "../../terraform-aws-vpc"
     source = "git::https://github.com/awsjoindevops/terraform-aws-vpc.git?ref=master"

    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    vpc_tags = var.vpc_tags

    #Public subnet
    public_subnet_cidr = var.public_subnet_cidr
    #Private Subnet
    private_subnet_cidr = var.private_subnet_cidr
    #Database Subnet
    database_subnet_cidr = var.database_subnet_cidr
        
    is_peering_required = var.is_peering_required
        
        
    }