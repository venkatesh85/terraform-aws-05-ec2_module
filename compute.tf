# public Instance Creation
resource "aws_instance" "public" {
  count                  = length(var.public_subnet_cidrs) * var.instances_per_subnet
  ami                    = var.ami_id
  key_name               = var.key_name
  instance_type          = var.instance_type
  subnet_id              = element(var.public_subnet_ids[*], count.index % length(var.public_subnet_cidrs))
  vpc_security_group_ids = var.security_groups_ssh
 

  tags = {
    Name = "${var.vpc_name}-public-instance-${count.index + 1}"
  }
}

# Private Instance Creation
resource "aws_instance" "private" {
  count                  = length(var.private_subnet_cidrs) * var.instances_per_subnet
  ami                    = var.ami_id
  key_name               = var.key_name
  instance_type          = var.instance_type
  subnet_id              = element(var.private_subnet_ids[*], floor(count.index / var.instances_per_subnet))
  vpc_security_group_ids = var.security_groups_web
 

  tags = {
    Name = "${var.vpc_name}-private-instance-${count.index + 1}"
  }
}

# Full Private Instance Creation
resource "aws_instance" "private_full" {
  count                  = length(var.full_private_subnet_cidrs) * var.instances_per_subnet
  ami                    = var.ami_id
  key_name               = var.key_name
  instance_type          = var.instance_type
  subnet_id              = element(var.full_private_subnet_ids[*], floor(count.index / var.instances_per_subnet))
  vpc_security_group_ids = var.security_groups_web
  tags = {
    Name = "${var.vpc_name}-private-full-instance-${count.index + 1}"
  }
}