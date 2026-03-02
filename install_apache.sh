#!/bin/bash
# Update package repositories and installed packages
sudo yum update -y

# Install the Apache web server (httpd)
sudo yum install -y httpd

# Start the Apache service
sudo systemctl start httpd

# Enable Apache to start automatically on system boot
sudo systemctl enable httpd

# Optional: Create a simple custom index.html file
echo "<html><body><h1>Welcome to Terraform!</h1></body><html>" > /var/www/html/index.html
