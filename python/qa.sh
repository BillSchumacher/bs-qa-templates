#!/bin/bash
set -euf -o pipefail
isort .
black --exclude='.*\/*(venv|node_modules|frontend)\/*.*' .
flake8 .
pylint --ignore-paths venv,venv* **/*.py
