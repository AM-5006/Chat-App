#!/bin/bash

# Activate the virtual environment
source env/bin/activate

# Collectstatic files
python3 manage.py collectstatic --noinput

#deactivate virtual environment
deactivate