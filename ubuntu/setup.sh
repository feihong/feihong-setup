sudo apt install -y python-pip build-essential python-dev libffi-dev \
  libssl-dev python3-dev
sudo pip install ansible markupsafe
ansible-playbook --ask-become-pass setup.yml
