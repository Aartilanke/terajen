
provider "aws" {
  region  = "ap-south-1"
  profile = "default"
}

resource "aws_instance" "my_instance_1" {
  ami           = "ami-03c68e52484d7488f"
  instance_type = "t2.micro"  # Choose an instance type

  tags = {
    Name = "MyTerraformInstance1"
  }

  key_name = "tera"  # Replace with your EC2 key pair name
}

resource "aws_instance" "my_instance_2" {
  ami           = "ami-03c68e52484d7488f"
  instance_type = "t2.micro"  # Choose an instance type

  tags = {
    Name = "MyTerraformInstance2"
  }

  key_name = "tera2"  # Replace with your EC2 key pair name
}

output "instance_1_public_ip" {
  value = aws_instance.my_instance_1.public_ip
}

output "instance_2_public_ip" {
  value = aws_instance.my_instance_2.public_ip
}
