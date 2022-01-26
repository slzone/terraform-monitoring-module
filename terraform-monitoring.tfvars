wrkld-monitoring-zone-1-subnet-vsi = {
      zone_number = "1"
      cidr_block = "10.50.0.0/29"
      network_acl = ""
    },

    wrkld-monitoring-zone-2-subnet-vsi= {
      zone_number = "2"
      cidr_block = "10.50.0.8/29"
      network_acl = ""
    },

   wrkld-monitoring-zone-3-subnet-vsi = {
      zone_number = "3"
      cidr_block = "10.50.0.16/29"
      network_acl = ""
    },


#######################################################################
# Workload OpenShift variables
#######################################################################
wrkld_monitoring_cluster_worker_subnets = ["wrkld-monitoring-zone-1-subnet-vsi", "wrkld-monitoring-zone-2-subnet-vsi", "wrkld-monitoring-zone-3-subnet-vsi"]

wrkld_monitoring_worker_pools = {
   pool1 = {
     worker_monitoring_nodes_per_zone = 1
     flavor = "mx2.4x32"
     subnets = ["wrkld-monitoring-zone-1-subnet-vsi", "wrkld-monitoring-zone-2-subnet-vsi", "wrkld-monitoring-zone-3-subnet-vsi"]
   },


