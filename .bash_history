sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt install docker-ce docker-ce-cli containerd.io
sudo systemctl status docker
apt list -a docker-ce
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io
sudo systemctl status docker
sudo service docker start
sudo service docker status
systemctl status docker
ps -p 1 -o comm=
sudo /etc/init.d/docker start
sudo /etc/init.d/docker status
docker --version
sudo apt-get purge docker-ce docker-ce-cli containerd.io sudo apt-get autoremove --purge
sudo apt-get update
curl -fsSL https: //download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt update
sudo apt install ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg -- dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
df-h
make install test
apt install make
make install test
mkdir my_flask_app && cd my_flask_app
python3 - m venv venv && source venv/bin/activate
pip install Flask
apt install python3-pip
sudo apt install python3-venv
mkdir my_flask_app && cd my_flask_app
python3 -m venv venv && source venv/bin/activate
pip install Flask
mkdir src
touch src/app.py
export FLASK_APP=src/app.py
nano app.py
flask run
https://127.0.0.1:5000/
flask run
nano app.py
export FLASK_APP=src/app.py
flask run
nano app.py
flask run
flask run --help
$env:FLASK_APP = "src/app.py"
set FLASK_APP=src/app.py
flask run
app:app.py
flask run
app:src
flask run app:app.py
run flask
export FLASK_APP=src/app.py
cd
flask run --app=src/app
cd Documents/my_flask_app
run FLASK_APP
pwd
cd src
cd ~/my_flask_app/src
sudo apt install python3.10
sudo apt install python3.10-venv
sudo apt install python3.10-distutils
sudo apt install python3.10-full
wsl --install
apt install wsl
