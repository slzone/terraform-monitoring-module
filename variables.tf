variable "ibmcloud_api_key" {
    description = "apikey"
}

variable "region" {
  default = "us-east"  
  description = "Region to provision the Openshift cluster. List all available regions with: ibmcloud regions"
}

variable "resource_group" {
  default = "edeavila-wrkld-vpc"
  description = "Resource Group id in your account to host the cluster. List all available resource groups with: ibmcloud resource groups. It is created if empty"
}

#variable "monitoring_worker_pool" {
    #description = "Monitoring Working Pool"
#}

#variable "monitoring_cluster" {
    #description = "Monitoring Cluster"
#}

variable "wrkld_monitoring_worker_pools" {
  description = "Entitlement for the cluster"
  type    = any
  default = {}
}

#variable "resource_group_id" {
    #type = string
#}