# This script installs java, jenkins and docker(add docker group) in your system.

sudo apt update
sudo apt install fontconfig openjdk-21-jre -y
java -version
echo "Java Installed suceessfully"
echo "========================================================"
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "========================================================"

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

echo "========================================================"

sudo apt update
sudo apt install jenkins -y

echo "Jenkins Installed"
echo "========================================================"

sudo apt update
sudo apt install docker.io -y
echo "Docker Installed"
echo "========================================================"
sudo usermod -aG docker $USER
newgrp docker
sudo usermod -aG docker jenkins
echo "Done!!!"
echo "========================================================"
