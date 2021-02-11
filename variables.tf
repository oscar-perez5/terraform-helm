variable "create_namespace" {
  type        = bool
  default     = true
  description = "Create namespace by default"
}

variable "chart_name" {}

variable "environment" {}

variable "helm_name" {}

variable "namespace" {}

variable "parameters" {
  default = []
}

variable "repository" {}
