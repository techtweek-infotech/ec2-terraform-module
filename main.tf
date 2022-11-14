module "ec2-instnace" {
  source       = "./modules/ec2-instnace"
  vpc_id        = "" #vpc id 
  key_name      = "" #instance_key_name
  ami_id        = "" #ami-037ff6********5c46
  instance_type = "" #"t2.small"
  public_subnet = "" #public subnet ids 
  volume_type   = "" #volume type as per your requirement
  volume_size   = "" #volume size as per your requirement
  encrypted     = "" #true, false
}
