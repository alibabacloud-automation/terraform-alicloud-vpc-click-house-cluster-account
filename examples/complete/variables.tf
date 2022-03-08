#alicloud_click_house_db_cluster
variable "db_description" {
  description = "The description of click house cluster"
  type        = string
  default     = "tf-testacc-description"
}

#alicloud_click_house_account
variable "db_account_pwd" {
  description = "The account password of click house db"
  type        = string
  default     = "YourPassword123!"
}