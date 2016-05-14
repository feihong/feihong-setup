sudo apt-get install -y python-pip
sudo pip install ansible markupsafe
ansible-playbook -K -i inventory setup.yml --ask-sudo-pass
