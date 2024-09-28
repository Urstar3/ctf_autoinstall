# bin/bash
sudo apt update
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.10 pipenv nginx mariadb-server redis-server
git clone https://github.com/CTFd/CTFd.git
sudo mv  CTFd /ctf
sudo chwon ctf:ctf /ctf
sudo cp gunicorn.service /etc/systemd/system/
sudo cp ctfd /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/ctfd /etc/nginx/sites-enabled
rm /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
cp cffi-1.18.0.dev0-cp312-cp312-linux_x86_64.whl /ctf
cp pybluemonday-0.0.12-cp312-cp312-linux_x86_64.whl /ctf
cp pipenv.sh /ctf
cd /ctf
sudo mkdir -p /var/log/ctfd/logs
sudo chown ctf:ctf /var/log/ctfd/logs
pipenv install --python 3.10
pipenv shell



