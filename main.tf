# Dev Infrastructure
module "dev-demo-app" {
    source = "./modules/demo-app"
    env_name = "dev"
    instance_type = "t2.micro"
    ami_id = "ami-053b0d53c279acc90"
    instance_name = "4demoinstance"
    bucket_name = "4demobucket"
    table_name = "4demotable"
}

# QA Infrastructure
module "qa-demo-app" {
    source = "./modules/demo-app"
    env_name = "qa"
    instance_type = "t2.small"
    ami_id = "ami-041feb57c611358bd"
    instance_name = "4demoinstance"
    bucket_name = "4demobucket"
    table_name = "4demotable"
}

# Production Infrastructure
module "prd-demo-app" {
    source = "./modules/demo-app"
    env_name = "prd"
    instance_type = "t2.medium"
    ami_id = "ami-026ebd4cfe2c043b2"
    instance_name = "4demoinstance"
    bucket_name = "4demobucket"
    table_name = "4demotable"
}
