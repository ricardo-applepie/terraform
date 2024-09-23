provider "aws" {
    region = "eu-central-1"
}

resource "aws_instance" "intro" {
    ami = "ami-00f07845aed8c0ee7"
    instance_type = "t2.micro"
    availability_zone = "eu-central-1a"
    key_name = "vprofile-prod-key"
    vpc_security_group_ids = ["sg-0a2a2b7a8b5c92375"]
    tags = {
        Name = "Dove-Instance"
    }  
}