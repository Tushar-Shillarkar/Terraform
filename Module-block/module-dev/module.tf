#module-block
module "EC2" {
  source                  = "/mnt/c/Users/SAGAR/Downloads/module-block/Resources/EC2"
  instancetype            = "t3.micro"
  amiid                   = "ami-0f559c3642608c138"
  keyname                 = "devops-project-key"
  disable_api_termination = false
  vpc_id                  = module.VPC.vpc_id
  subnet_id               = module.VPC.Subnet_id
}
module "VPC" {
  source     = "/mnt/c/Users/SAGAR/Downloads/module-block/Resources/VPC"
  vpccidr    = "10.0.0.0/16"
  subnetcidr = "10.0.1.0/24"

}
