resource "aws_subnet" "main_public_subnet1" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "10.10.1.0/16"
  map_public_ip_on_launch = false
  tags = {
    Name = "demo-subnet"
  }
}

resource "aws_subnet" "main_public_subnet2" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "10.10.2.0/16"
  map_public_ip_on_launch = false
  tags = {
    Name = "demo-subnet2"
  }
}

# map_public_ip_on_launch : vpc 내에서 server를 띄울때 자동으로 public ip가 할당된다. 
