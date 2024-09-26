# bin/bash
sudo apt update
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.10 pipenv nginx
git clone https://github.com/CTFd/CTFd.git
mv  CTFd /ctf
cp cffi-1.18.0.dev0-cp312-cp312-linux_x86_64.whl /ctf
cp pybluemonday-0.0.12-cp312-cp312-linux_x86_64.whl /ctf
cp pipenv.sh /ctf
cd /ctf
sudo mkdir -p /var/log/ctf/logs
sudo chown ctfd:ctfd /var/log/ctf/logs
pipenv install --python 3.10
pipenv shell



