data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}
# Create an autoscaling group with the specified configurations
resource "aws_autoscaling_group" "asg" {
  name                = "my-asg"
  min_size            = 2
  max_size            = 5
  desired_capacity    = 2
  vpc_zone_identifier = data.aws_subnets.default.ids
  launch_template {
    id = aws_launch_template.lt-asg.id
  }

# Tag the autoscaling group for easier identification 
  tag { 
    key                 = "Name"
    value               = "my private ASG"
    propagate_at_launch = true
  }
}
 
 # Create a launch template with the specified configurations
 resource "aws_launch_template" "lt-asg" {
   name                   = "my-lt-asg"
   image_id               = "ami-09256c524fab91d36"
   instance_type          = "t3.micro"
   key_name               = "MYTERRAFORMPROJECT2"
   vpc_security_group_ids = [aws_security_group.lt-sg.id]
   user_data              = filebase64("${path.root}/install_apache.sh")
 }