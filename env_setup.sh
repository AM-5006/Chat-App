#!/bin/bash

# Move to /home/ubuntu/
cd /home/ubuntu/

if [ -d "env" ]; then
    echo "Python virtual environment exists."
else
    python3 -m venv env
fi

# Activate the virtual environment
source env/bin/activate

# Install requirements
pip3 install -r /var/lib/jenkins/workspace/Chat_App_Pipeline/requirements.txt

#deactivate virtual environment
deactivate