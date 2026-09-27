# variables for the compute module

variable "instance_type" {
  description = "The type of instance to launch."
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the instance."
  type        = string
}

variable "key_name" {
  description = "The name of the key pair to use for the instance."
  type        = string
}

variable "security_groups_ssh" {
  description = "A list of security group IDs to associate with the instance."
  type        = list(string)
}

variable "security_groups_web" {
  description = "A list of security group IDs to associate with the instance."
  type        = list(string)
}

variable "vpc_name" {
  description = "The name of the VPC to which the instances belong."
  type        = string
}

variable "instances_per_subnet" {
  description = "The number of instances to launch per public subnet."
  type        = number
}

variable "public_subnet_cidrs" {
  description = "A list of public subnet CIDR blocks."
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "A list of private subnet CIDR blocks."
  type        = list(string)
}

variable "full_private_subnet_cidrs" {
  description = "A list of full private subnet CIDR blocks."
  type        = list(string)
}

variable "public_subnet_ids" {
  description = "A list of public subnet IDs."
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "A list of private subnet IDs."
  type        = list(string)
}

variable "full_private_subnet_ids" {
  description = "A list of full private subnet IDs."
  type        = list(string)
} 