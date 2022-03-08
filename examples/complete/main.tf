data "alicloud_zones" "default" {
}

module "vpc" {
  source             = "alibaba/vpc/alicloud"
  create             = true
  vpc_cidr           = "172.16.0.0/16"
  vswitch_cidrs      = ["172.16.0.0/21"]
  availability_zones = [data.alicloud_zones.default.zones.0.id]
}

module "example" {
  source = "../.."

  #alicloud_click_house_db_cluster
  db_cluster_version  = "20.3.10.75"
  db_category         = "Basic"
  db_cluster_class    = "S8"
  db_description      = var.db_description
  db_node_group_count = 1
  payment_type        = "PayAsYouGo"
  db_node_storage     = "500"
  db_storage_type     = "cloud_essd"
  db_vswitch_id       = module.vpc.this_vswitch_ids[0]

  #alicloud_click_house_account
  db_account_name = "tf_account_name"
  db_account_pwd  = var.db_account_pwd

}