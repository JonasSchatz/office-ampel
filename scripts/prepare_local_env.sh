#!/bin/bash

# Set the working folder to the project folder
SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $SCRIPTS_DIR
cd ..
echo $PWD

# Create the virtual env
if test -f "venv/bin/activate"; then
	echo "Virtual environment venv is already created!"
else
	python3 -m venv venv
fi

# Activate the venv
source venv/bin/activate

# Install python packages
pip3 install -r requirements.txt

