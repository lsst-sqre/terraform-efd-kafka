variable "google_project" {
  description = "google cloud project ID"
  default     = "plasma-geode-127520"
}

variable "env_name" {
  description = "Name of deployment environment."
}

variable "deploy_name" {
  description = "Name of deployment."
  default     = "kafka-demo"
}

# Name of google cloud container cluster to deploy into
data "template_file" "gke_cluster_name" {
  template = "${var.deploy_name}-${var.env_name}"
}

# k8s namespace
data "template_file" "k8s_namespace" {
  template = "${var.deploy_name}"
}

variable "aws_zone_id" {
  description = "route53 Hosted Zone ID to manage DNS records in."
  default     = "Z3TH0HRSNU67AM"
}

variable "domain_name" {
  description = "DNS domain name to use when creating route53 records."
  default     = "lsst.codes"
}
