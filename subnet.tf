#public subnet
resource "aws_subnet" "main_public_subnet1" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/17" #vpc cidr: 10.0.0.0/16 , subnet mask up / ip boundery narrow
  map_public_ip_on_launch = false
  tags = {
    Name = "demo-subnet-public"
  }
}

resource "aws_subnet" "main_private_subnet1" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "10.00.2.0/18" #vpc cidr: 10.0.0.0/16 , , subnet mask up / ip boundery narrow
  map_public_ip_on_launch = true
  tags = {
    Name = "demo-subnet2-private"
  }
}

# map_public_ip_on_launch : vpc 내에서 server를 띄울때 자동으로 public ip가 할당된다. 

resource "aws_internet_gateway" "main_igw" {
  vpc_id = "${aws_vpc.main.id}"
  tags {
    Name = "demo-internet-gateway"
  }
}

resource "aws_route" "side_effect_internet_access" {
  route_table_id = "${aws_vpc.main.main_route_table_id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = "${aws_internet_gateway.main_igw.id}"
}
