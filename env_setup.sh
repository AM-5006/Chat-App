#!/bin/bash

if [ -d "env" ]; then
    echo "Python virtual environment exists."
else
    python3 -m venv env
fi

# Activate the virtual environment
source env/bin/activate

# Install requirements
pip3 install -r requirements.txt

#deactivate virtual environment
deactivate