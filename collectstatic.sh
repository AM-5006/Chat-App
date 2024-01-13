#!/bin/bash

# Move to /home/ubuntu/
cd /home/ubuntu/

# Activate the virtual environment
source env/bin/activate

# Move to /var/lib/jenkins/workspace/Chat_App_Pipeline
cd /var/lib/jenkins/workspace/Chat_App_Pipeline

# Collectstatic files
sudo python3 manage.py collectstatic --noinput

#deactivate virtual environment
deactivate