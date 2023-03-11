#! /bin/sh
sudo apt-get -y install python3-pip git
python3 -m pip install --user ansible
python3 -m pip install --upgrade --user ansible
python3 -m pip install --user argcomplete

ansible-galaxy collection install community.general
ansible-galaxy collection install community.docker

ansible-playbook ./mizy.yml --check