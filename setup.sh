# bin/bash
sudo apt update
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.10 pipenv nginx
git clone https://github.com/CTFd/CTFd.git
mv  CTFd /ctf
cp pipenv.sh /ctf
cd /ctf
sudo mkdir -p /var/log/ctf/logs
sudo chown ctfd:ctfd /var/log/ctf/logs
pipenv install --python 3.10
pipenv shell



