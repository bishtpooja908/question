#!/bin/bash

# Check if the user has root permissions
if 
        "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Update the package manager and install Nginx
if command -v apt-get &> /dev/null
then
    # For Debian-based systems
    sudo apt-get update
     sudo apt-get install nginx -y
elif command -v yum &> /dev/null
then
    # For amazon-linux systems
    sudo yum update
    sudo amazon-linux-extras install nginx1
else
    echo "Unable to install Nginx. Please ensure you are running a supported Linux distribution."
    exit 1
fi

# Start Nginx service
sudo systemctl start nginx

# Enable Nginx to start automatically on boot
sudo systemctl enable nginx