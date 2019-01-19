# Install pre-reqs
apt-get update 
apt-get install -y git

# Download the 
cd /tmp
git clone https://github.com/darth-veitcher/hassemble.git
cd hassemble/setup

# Install the rest
apt-get install -y ansible software-properties-common python2.7 python-apt

# Run playbook
ansible-playbook -i inventory setup.yml