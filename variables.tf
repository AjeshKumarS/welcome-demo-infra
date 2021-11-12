variable "instance_name" {
  description = "Aws instance for welcome demo app"
  type        = string
  default     = "ajesh_zara_welcome_demo"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "~/.ssh/ajesh-infra-local-key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "~/.ssh/ajesh-infra-local-key.pub"
}
