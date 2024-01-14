#!/bin/bash

# Activate the virtual environment
source env/bin/activate

# Collectstatic files
doppler run -- python3 manage.py collectstatic --noinput

#deactivate virtual environment
deactivate