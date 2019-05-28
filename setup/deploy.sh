#!/bin/bash
#
# Use this script to deploy logstash with bro-s3-elastic framework

# Add lsinit user to own bro-s3-elastic framework and 
sudo useradd lsinit --home-dir /usr/local/share/lsinit --create-home --user-group

# Install RVM for sudo user to satisfy s/w dependencies
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --ruby

# switch to lsinit user to install the framework
sudo su - lsinit

# Install RVM for lsinit user
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --ruby

# Re-initiate the session for lsinit
exit
sudo su - lsinit

# Clone bro-s3-elastic repository
git clone https://github.com/bortok/bro-s3-elastic.git
cd ~/bro-s3-elastic

# temporary during branch development
git fetch origin
git checkout -b dynamic_pipeline_input
git pull origin dynamic_pipeline_input
cd
cd ~/bro-s3-elastic

# Install gems
rvm install "ruby-2.4.1"
cd
cd ~/bro-s3-elastic
bundle install
