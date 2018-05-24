#!/bin/bash

#Bootstrap machine to prepare it for Ansible

set -e

# Download and install Homebrew

if [ ! "$(which brew)" ]; then
   echo "Install Homebrew"
   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Download and install Ansible

if [ ! "$(which ansible)" ]; then
   echo "Install Ansible"
   brew update
   brew install ansible
fi