terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.7.1"
    }
  }
}

data "ibm_container_cluster_config" "c7gu0kmw08l4nl1ors20" {
  cluster_name_id = "edeavila-wrkld-vpc-roks"
  admin           = true
  config_dir      = "/tmp/.schematics"
}

provider "kubernetes" {
  host                   = data.ibm_container_cluster_config.cluster_foo.host
  client_certificate     = data.ibm_container_cluster_config.cluster_foo.admin_certificate
  client_key             = data.ibm_container_cluster_config.cluster_foo.admin_key
  cluster_ca_certificate = data.ibm_container_cluster_config.cluster_foo.ca_certificate
  }

resource "null_resource" "instantiate-monitoring" {
  provisioner "local-exec" {
    command = <<COMMAND
            ibmcloud login --apikey ${var.ibmcloud_api_key} -r ${var.region} -g ${var.resource_group} --quiet ; \
            ibmcloud ks cluster config --cluster edeavila-wrkld-vpc-roks --admin
            kubectl create namespace grafana
            kubectl apply -f "${path.module}/grafana-operator.yaml"
        COMMAND
  }
}

