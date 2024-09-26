# bin/bash
pip install -U setuptools
pip install -r requirements.txt
gunicorn --bind 0.0.0.0:8000 'CTFd:create_app()'
path = pipenv --venv

