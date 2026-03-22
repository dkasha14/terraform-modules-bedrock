module "storage" {
  source = "./s3"
  mys3bucket_name = "dk-devop-bucket"
}

module "network" {
  source = "./vpc"

  myvpc_name        = "dk-vpc"
  myvpc_cidr        = "10.124.0.0/16"
  myigw_name        = "dk-igw"
  myroute_name      = "dk-route"
  mypubsubnet_name  = "dk-pubsubnet"
  mypubsubnet_cidr  = "10.124.10.0/24"
  mysecgroup_name   = "dk-secgroup"
}

module "compute" {
  source = "./ec2"

  myserver_name = "DK-PubServer"
  keyname       = "asha.nvirg"
  instance_type = "t2.micro"

  vpcsgid = module.network.mysgid
  subnetid = module.network.mysubnetid
}


 # working with modules

# module "storage" {
# 	source = "./s3"
# 	mys3bucket_name = "dk-devop-bucket"

# }

# module "network" {

# 	source = "./vpc"
# 	myvpc_name = "dk-vpc"
# 	myvpc_cidr = "10.124.0.0/16"
# 	myigw_name = "dk-igw"
# 	myroute_name = "dk-route"
# 	mypubsubnet_name = "dk-pubsubnet"
# 	mypubsubnet_cidr = "10.124.10.0/24"
# 	mysecgroup_name	= "dk-secgroup"

# }

# module "compute" {
# 	source = "./ec2"
# 	myserver_name = "DK-PubServer"
# 	keyname = "asha.nvirg"
# 	instance_type = "t2.micro"
# 	vpcsgid = "${module.network.mysgid}"
# 	subnetid = "${module.network.mysubnetid}"

# }

