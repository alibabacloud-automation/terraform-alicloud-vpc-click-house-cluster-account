provider "alicloud" {
  profile = "default"
}

data "alicloud_zones" default {}

resource "alicloud_vpc" "default" {
  vpc_name   = "TerraformTest"
  cidr_block = "172.16.0.0/12"
}

resource "alicloud_vswitch" "default" {
  vpc_id     = alicloud_vpc.default.id
  cidr_block = cidrsubnet(alicloud_vpc.default.cidr_block,8,2)
  zone_id    = data.alicloud_zones.default.zones.0.id
}

module "example" {
  source        = "../"
  db_vswitch_id = alicloud_vswitch.default.id
}