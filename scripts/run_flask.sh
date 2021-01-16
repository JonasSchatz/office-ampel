#!/bin/bash

# Set the working folder to the project folder
SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $SCRIPTS_DIR
cd ..

# Activate the venv
source venv/bin/activate
export FLASK_APP=office-ampel.py
flask run --host=0.0.0.0