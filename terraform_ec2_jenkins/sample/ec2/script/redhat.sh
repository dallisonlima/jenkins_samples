#!/bin/bash

sudo yum update -y

sudo tee /etc/yum.repos.d/adoptium.repo <<EOF
[Adoptium]
name=Adoptium
baseurl=https://packages.adoptium.net/artifactory/rpm/amazonlinux/2/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://packages.adoptium.net/artifactory/api/gpg/key/public
EOF

sudo dnf -y install temurin-17-jdk

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

sudo yum install fontconfig java-11-openjdk -y
sudo yum install jenkins -y

sudo systemctl start jenkins 