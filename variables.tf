variable "prefix" {
 type        = string
 description = "prefix to apply to resources - optional, but keeps your stuff identify"
 default     = "<your frefix>"
}

variable "confluent_cloud_api_key" {
  description = "Confluent Cloud API Key"
  type = string
  default = "<your Confluent Cloud API Key>"
}

variable "confluent_cloud_api_secret" {
  description = "Confluent Cloud API Secret"
  type = string
  default = "<your Confluent Cloud API Secret>"
}

variable "aws_account_id" {
  description = "AWS account id (12 digits)"
  type = string
  default = "<your 12 digits AWS account id>"
}

variable "region" {
  description = "The AWS Region of the existing VPC"
  type        = string
  default = "<your AWS Region>"
  //Note : Schema registry essential package is not supported in all regions, so this variable is not used for it. See sr_region
}

variable "sr_region" {
  description = "The Schema Registry AWS Region"
  type        = string
  default = "<your SR AWS Region>"
}

variable "vpc_id" {
  description = "The VPC ID to private link to Confluent Cloud"
  type        = string
  default = "<your AWS VPC ID>"
}

variable "subnets_to_privatelink" {
  description = "A map of Zone ID to Subnet ID (i.e.: {\"use1-az1\" = \"subnet-abcdef0123456789a\", ...})"
  type        = map(string)
  default = {"<ZoneID1>" = "<Subnet ID1>","<ZoneID2>" = "<Subnet ID2>",...}
  //default = {"euw1-az1" = "subnet-055303fea59318e34", "euw1-az2" = "subnet-0b3eacd34b94e4e7a", "euw1-az3" = "subnet-0cbcd4115dfeed007"}
}
