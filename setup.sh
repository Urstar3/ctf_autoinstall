# bin/bash
sudo -s
apt update
apt add-apt-repository ppa:deadsnakes/ppa
apt update
apt install python3.10 python3-pipenv
git clone https://github.com/Urstar3/Ctfd_fork1
mv  Ctfd_fork1 /ctf
cd /ctf
pipenv shell
pip install -r requirements.txt
pip install cffi.whl 
pip install pybluemonday.whl
gunicorn --bind 0.0.0.0:9800 'CTFd:create_app()'



