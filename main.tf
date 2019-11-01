provider "aws" {
        region = "eu-west-1"
        version = "~> 2.33"
			}

resource "aws_security_group" "default-ec2-sg" {
        name = "default-ec2-sg"
        description = "Default EC2 Security Group"

        ingress {
                from_port = 22
                to_port = 22
                protocol = "tcp"
                cidr_blocks = ["81.111.159.235/32"]
        }
}

resource "aws_instance" "centos-8" {
        ami = "ami-0a92cb970a294efab"
        instance_type = "t2.micro"
        key_name = "wayne@thinkpad-x250"
        security_groups = ["default-ec2-sg"]
        tags = {
         Name = "centos-8"
        }
}
