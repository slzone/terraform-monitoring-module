module "monitoring_instance" {
  source = "git@github.ibm.com:slz-v2-poc/monitoring.git"
  version = "1.0.0"

  resource_group = var.resource_group
  ibmcloud_api_key = var.ibmcloud_api_key
  region = var.region
}
