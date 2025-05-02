ctfd auto install for ubuntu server 24.04 and up please check the ppa repository for ondrec/python available in your os or ubuntu version 
couple config after run the script
Note: CTFd will run on port 81 to change modify ctfd file before installing or modify in nginx/sites-enabled 

# change /etc/systemd/system/gunicorn.service
  user and to group to your user and group
  environment to pipenv environment path using "pipenv --venv " to get pipenv venv path
  same with exec start
