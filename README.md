ctfd auto install for ubuntu server 24.04
couple config after run the script

# change /etc/systemd/system/gunicorn.service
  user and to group to your user and group
  environment to pipenv environment path using "pipenv --venv " to get pipenv venv path
  same with exec start
# change redis config at etc/redis/redis.conf
    requirepass to password for redis
# create database in mysql 
    database name ctfd 
    user admin@localhost 
        
# change /ctf/CTFd/config.ini
    database url with mysql+pymysql://ctf:password@localahost/database
    redis url to redis://default:redis password@localhost:6397
