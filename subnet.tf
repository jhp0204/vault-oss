resource "aws_subnet" "side_effect_public_subnet1" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "10.10.1.0/16"
  map_public_ip_on_launch = false
  tags = {
    Name = "demo-subnet"
  }
}
