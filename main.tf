resource "alicloud_click_house_db_cluster" "default" {
  db_cluster_version      = var.db_cluster_version
  category                = var.db_category
  db_cluster_class        = var.db_cluster_class
  db_cluster_network_type = "vpc"
  db_cluster_description  = var.db_description
  db_node_group_count     = var.db_node_group_count
  payment_type            = var.payment_type
  db_node_storage         = var.db_node_storage
  storage_type            = var.db_storage_type
  vswitch_id              = var.db_vswitch_id
}

resource "alicloud_click_house_account" "default" {
  db_cluster_id    = alicloud_click_house_db_cluster.default.id
  account_name     = var.db_account_name
  account_password = var.db_account_pwd
}