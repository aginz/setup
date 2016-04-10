#!/bin/bash

echo "Creating .bash_profile..."
echo "source ~/.profile # Load the default .profile" >> $HOME/.bash_profile
echo "source ~/.bash_profile.work # Load the work bash_profile" > $HOME/.bash_profile

echo "Install Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "export PATH=/usr/local/bin:$PATH #Homebrew" >> $HOME/.bash_profile

echo "Install Xcode..."
xcode-select --install

echo "Install RVM..."
\curl -sSL https://get.rvm.io | bash -s stable
source $HOME/.rvm/scripts/rvm

echo "Install MySQL56..."
brew install mysql56
ln -sfv /usr/local/opt/mysql56/*.plist ~/Library/LaunchAgents

echo "Install RabbitMQ..."
brew install rabbitmq
ln -sfv /usr/local/opt/rabbitmq/*.plist ~/Library/LaunchAgents
echo "export PATH=$PATH:/usr/local/sbin # Rabbit MQ" >> $HOME/.bash_profile

echo "Install Redis..."
brew install redis
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents

echo "Sourcing profile and bash_profile..."
source $HOME/.profile
source $HOME/.bash_profile
