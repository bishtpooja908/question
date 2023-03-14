variable "ami_ids" {
  type = map(string)
  default = {
    ubuntu = "ami-0735c191cf914754d"
    amazonlinux = "ami-0df24e148fdb9f1d8"
  }
}
variable "instance_type" {
    type = string
    default = "t2.micro"
}
variable "key_name" {
  type = string
  default = "bashkey"
  
}
variable "security_groups" {
  type = list
  default = ["ansibletest"]
}
variable "userdata_file_path" {
  type = string
  default = "userdata.sh"
}
