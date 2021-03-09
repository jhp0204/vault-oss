resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "demo-vpc"
  }
}


resource "aws_default_route_table" "main" {
  default_route_table_id = "${aws_vpc.main.default_route_table_id}"

  tags {
    Name = "demo-route-table"
  }
} 
# vpc 생성 시, 자동으로 생기는 route table을 Terraform에서 관리하기 위하여 argument값만 가져온다. 
