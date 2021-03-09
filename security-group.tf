resource "aws_security_group" "main-allow-all" {
  name = "main-allow-all"
  description = "Allow all inbound traffic"
  vpc_id = "${aws_vpc.main.id}"

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1" # -1은 모든 프로토콜 사용의미
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
