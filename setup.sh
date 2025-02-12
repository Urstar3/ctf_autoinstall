# bin/bash
sudo apt update
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.10 pipenv nginx mariadb-server redis-server
sudo mysql -uroot -e "create database ctfd"
sudo mysql -uroot -e "create user ctf@localhost identified by 'admin123';"
sudo mysql -uroot -e "grant all privileges on ctfd.* to ctf@localhost;"
sudo mysql -uroot -e "flush privileges;"

git clone https://github.com/CTFd/CTFd.git
sudo mv  CTFd /ctf
sudo chown ctf:ctf /ctf
sudo cp *.service /etc/systemd/system/
sudo cp ctfd /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/ctfd /etc/nginx/sites-enabled
rm /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
cp cffi-1.18.0.dev0-cp312-cp312-linux_x86_64.whl /ctf
cp pybluemonday-0.0.12-cp312-cp312-linux_x86_64.whl /ctf
cp pipenv.sh /ctf
cd /ctf
sed -i "s|DATABASE_URL =|DATABASE_URL=mysql+pymysql://ctf:admin123@localhost/ctfd|g" CTFd/config.ini
sudo sed -i "s|# requirepass foobared|requirepass 2Mei1998|g" /etc/redis/redis.conf
sed -i "s|REDIS_URL =|REDIS_URL=redis://default:2Mei1998@localhost:6379|g" CTFd/config.ini
sudo mkdir -p /var/log/ctfd/logs
sudo chown ctf:ctf /var/log/ctfd/logs
pipenv install --python 3.10
pipenv shell



