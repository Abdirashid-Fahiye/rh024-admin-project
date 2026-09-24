#!/bin/bash
# Automate system updates and service management for RH024

echo "Updating system packages..."
# Using dnf for Red Hat Enterprise Linux package management
sudo dnf update -y

echo "Installing Nginx web server..."
# The -y flag automatically answers 'yes' to installation prompts
sudo dnf install nginx -y

echo "Starting and enabling Nginx service..."
# systemctl controls the systemd initialization system
sudo systemctl start nginx
sudo systemctl enable nginx

echo "System maintenance and service provisioning complete."
