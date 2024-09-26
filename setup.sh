# bin/bash
apt update
add-apt-repository ppa:deadsnakes/ppa
apt update
apt install python3.10 pipenv
git clone https://github.com/CTFd/CTFd.git
mv  CTFd /ctf
cd /ctf
pipenv install --python 3.10
pipenv shell



