# Install pre-reqs
sudo apt-get update 
sudo apt-get install software-properties-common python2.7 python-apt -y

apt-get install -y ansible

# Run playbook
ansible-playbook -i inventory setup.yml