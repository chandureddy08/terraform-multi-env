variable "ami_id" {
    default = "ami-090252cbe067a9e58"
}
variable "instance_names" {
    default = {
    db-dev = "t2.small"
    backend-dev = "t2.micro"
    frontend-dev = "t3.micro"
    }
    type = map
}
variable "environment" {
    default = "dev"
}
variable "common_tags" {
    type = map
    default = {
        Project = "Expense"
        Terraform = "True"
    }
}
variable "zone_id" {
    default = "Z1007947UZZMRR34QF56"
    type = string
  
}
variable "domain_name" {
    default = "chandureddy.online"
    type = string
}