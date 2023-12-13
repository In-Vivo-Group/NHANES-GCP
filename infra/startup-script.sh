#! /bin/bash



sudo add-apt-repository ppa:deadsnakes/ppa -y 
sudo apt-get update -y
#sudo apt upgrade -y

# # Install Python 3.11
# do apt get for install - Abdul
sudo apt-get install wget build-essential libncursesw5-dev unzip libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev python3-pip python3.11  python3.11-dev python3.11-venv -y
touch /tmp/python3-11-installed.txt

# # Install Poetry
sudo mkdir /opt/poetry
sudo chmod 755 /opt/poetry
export POETRY_HOME=/opt/poetry
curl -sSL https://install.python-poetry.org | python3 -
export PATH="/opt/poetry/bin:$PATH"
poetry --version > /tmp/poetry-version.txt

# # install venv
python3.11 -m venv myenv
source myenv/bin/activate
python --version > /tmp/python-version.txt

## Data processing steps TODO: here




