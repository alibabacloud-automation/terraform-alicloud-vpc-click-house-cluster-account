#alicloud_click_house_db_cluster
variable "db_cluster_version" {
  description = "The cluster version of click house db"
  type        = string
  default     = "20.3.10.75"
}

variable "db_category" {
  description = "The category of click house db"
  type        = string
  default     = "Basic"
}

variable "db_cluster_class" {
  description = "The cluster class of click house db"
  type        = string
  default     = "S8"
}

variable "db_description" {
  description = "The description of click house cluster"
  type        = string
  default     = ""
}

variable "db_node_group_count" {
  description = "The node group count of click house db"
  type        = number
  default     = 1
}

variable "payment_type" {
  description = "The payment type of the resource."
  type        = string
  default     = "PayAsYouGo"
}

variable "db_node_storage" {
  description = "The storage size of click house db node"
  type        = string
  default     = "500"
}

variable "db_storage_type" {
  description = "The type of click house db storage"
  type        = string
  default     = "cloud_essd"
}

variable "db_vswitch_id" {
  description = "The vswitch id of  click house db"
  type        = string
  default     = ""
}

#alicloud_click_house_account
variable "db_account_name" {
  description = "The account name of click house db"
  type        = string
  default     = ""
}

variable "db_account_pwd" {
  description = "The account password of click house db"
  type        = string
  default     = ""
}