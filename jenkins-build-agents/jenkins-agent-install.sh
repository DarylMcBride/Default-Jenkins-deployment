sudo apt-get update
sudo apt-get install defult-jre
sudo apt-get install openssh-server
sudo useradd -d /var/lib/jenkins jenkins

sudo mkdir -p /var/lib/jenkins/.ssh
cd /var/lib/jenkins/.ssh

sudo ssh-keygen -t rsa -C "jenkins agent key" -f "jenkinsagent_rsa"

cat jenkinsagent_rsa.put | sudo tee authorized_keys
sudo chown -R jenkins:jenkins /var/lib/jenkins/
