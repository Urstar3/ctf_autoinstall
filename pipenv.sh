# bin/bash
pip install -U setuptools
pip install -r requirements.txt
gunicorn --bind 0.0.0.0:8000 'CTFd:create_app()'
path = pipenv --venv

sudo echo "[Unit]
Description=Gunicorn instance to serve ctfd
After=network.target

[Service]
User=ctfd
Group=www-data
WorkingDirectory=/var/www/CTFd
Environment="PATH=$path/bin"
ExecStart=$path/bin/gunicorn --bind unix:app.sock --keep-alive 2 --workers 3 --worker-class gevent 'CTFd:create_app()' --access-logfile '/var/log/CTFd/CTFd/logs/access.log' --error-logfile '/var/log/CTFd/CTFd/logs/error.log'


[Install]
WantedBy=multi-user.target" > etc/systemd/system/ctf.service