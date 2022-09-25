#!/bin/bash
set -euf -o pipefail
isort .
black --exclude='.*\/*(settings|migrations|venv|node_modules|frontend)\/*.*' .
flake8 .
DJANGO_SETTINGS_MODULE={{ repo_name }}.settings pylint --ignore-paths venv,venv* **/*.py
