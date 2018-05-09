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

TARGET_FOLDER="$HOME/Projects"

# Clone Compact logger https://github.com/octplane/ansible_stdout_compact_logger

echo "Clonning Compact logger into $TARGET_FOLDER"
cd "$TARGET_FOLDER"
git clone https://github.com/octplane/ansible_stdout_compact_logger.git
cd "$TARGET_FOLDER/ansible-dotfiles"


# ansible-playbook local.yml -K -i ./inventory/localhost.yml