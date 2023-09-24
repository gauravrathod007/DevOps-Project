#!/bin/bash

# Install dependencies
sudo yum update -y
sudo yum install ruby wget -y

# Download the CodeDeploy agent
cd /tmp
wget https://do-tst7-us-east-1.s3.us-east-1.amazonaws.com/latest/install

# Give execute permissions to the installation script
chmod +x ./install

# Run the installation script
sudo ./install auto

# Start the CodeDeploy agent
sudo service codedeploy-agent start

# Enable the agent to start on boot
sudo chkconfig codedeploy-agent on

# Check the agent's status
sudo service codedeploy-agent status

