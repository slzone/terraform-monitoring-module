module "monitoring_instance" {
  source = "git@github.ibm.com:edeavil/monitoring-test-ver1.git"
  version = "1.0.0"

  resource_group = var.resource_group
  ibmcloud_api_key = var.ibmcloud_api_key
  region = var.region
}
