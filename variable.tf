variable "aws_access_key" {
     type        = string
     description = "AWS access key for the AWS account.(User should supply value for the test)"
     default = ""
}
variable "aws_secret_key" {
    type        = string
    description = "AWS Secret key for the AWS account.(User should supply value for the test)"
    default = ""
 }
variable "aws_token" {
  type        = string
  description = "AWS Session token for the AWS account.(User should supply value for the test)"
  default     = ""
}
 variable "aws_profile" {
     type        = string
     description = "DO NOT CHANGE"
     default = "default"
 }

  variable "aws_shared_config_file" {
       type        = string
       description = "DO NOT CHANGE"
       default = "~/.aws/config"
 }
 variable "aws_shared_credentials_file" {
       type        = string
       description = "DO NOT CHANGE"
       default = "~/.aws/credentials"
 }
variable "aws_region" {
     type        = string
     description = "DO NOT CHANGE unless YOUR REGION CHANGED"
     default = "us-east-1"
}
 variable "bucket_name" {
       type        = string
       description = "DO NOT CHANGE"
       default = "aws-test-bucket-"
 }