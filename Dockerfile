FROM jenkins:latest
USER root
sudo apt-get update
sudo apt-get install docker
sudo usermod -aG docker jenkins
