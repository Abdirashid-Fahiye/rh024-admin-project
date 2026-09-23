#!/bin/bash
# Automate directory creation and permission assignment for RH024

echo "Creating shared team directories..."
sudo mkdir -p /opt/dev_team_share
sudo mkdir -p /opt/qa_team_share

echo "Assigning group ownership..."
# chgrp changes the group assigned to a file or directory
sudo chgrp developers /opt/dev_team_share
sudo chgrp qa /opt/qa_team_share

echo "Setting strict file permissions (chmod)..."
# 770 sets full access for Owner and Group, but locks out Others entirely
sudo chmod 770 /opt/dev_team_share
sudo chmod 770 /opt/qa_team_share

echo "Permissions successfully applied. Shared environments are now secure."
