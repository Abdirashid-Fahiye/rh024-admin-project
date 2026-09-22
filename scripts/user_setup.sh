#!/bin/bash
# Automate user and group creation for RH024

echo "Creating organizational groups..."
sudo groupadd developers
sudo groupadd qa

echo "Provisioning user accounts..."
# Create dev1 and add to developers group
sudo useradd -m -G developers dev1
# Create qa1 and add to qa group
sudo useradd -m -G qa qa1
# Create admin1 and add to the standard administrative group
sudo useradd -m -G sudo admin1

echo "Setting default passwords..."
echo "dev1:Welcome123!" | sudo chpasswd
echo "qa1:Welcome123!" | sudo chpasswd
echo "admin1:Welcome123!" | sudo chpasswd

echo "User setup complete."
