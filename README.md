# Ansible based dotfiles

[![Build Status](https://travis-ci.org/ephimoff/ansible-dotfiles.svg?branch=master)](https://travis-ci.org/ephimoff/ansible-dotfiles)

## Installation

1. Install xcode from the app store.
1. Open xcode and accept the license agreement.
1. Install xcode command line tools:
    ```
    xcode-select --install
    ```
1. Clone this repository by running the following commands:
    ```
    mkdir ~/Projects
    git clone https://github.com/ephimoff/ansible-dotfiles.git ~/Projects/ansible-dotfiles
    ```
1. Run the bootstraping script:
    ```
    cd ~/Projects/ansible-dotfiles
    ./bootstrap.sh
    ```

    **Note**: The script will install Hombrew and Ansible on your machine. Then will clone [Ansible Compact logger]() to `~/Projects/` folder. You can change that, but don't forget to update `ansible.cfg` and remove the following lines:
    ```
    callback_plugins= ~/Projects/ansible_stdout_compact_logger/callbacks
    stdout_callback = anstomlog
    ```

1. Run the playbook:
    ```
    ansible-playbook provision.yml
    ```

### Options

- To provision only certain tags run:
    ```
    ansible-playbook provision.yml --tags "all"
    ```
- To skip tags
    ```
    ansible-playbook provision.yml --skip-tags "ruby, js"
    ```

## TODO

- ~~dotfiles~~
- ~~ruby~~
- ~~node apps~~
- ~~mas~~
- ~~maybe restructure code a little bit better: split based on a role~~
- ~~travis~~
- ~~proper readme~~
- ~~review and update extra re-installs, i.e. VS Code extensions~~
- ~~task for backing up dotfiles~~
- ~~vim~~
    - vim packages
- ~~ssh~~
    - to add orion hosts (check the tags or conditions)
- symlink scripts folder - optional (`ln -s ~/Projects/scripts ~/.scripts`)
- add conditions to some tasks (e.g. brew clean only if apps installed)

## Manual steps

- Add license for Bettertouch Tool, or purchase one
- The default theme for zsh is Power9K and uses a ligature font. To enable it got to Terminal -> Preferences -> Profile -> Font and choose the ligature font. I prefer Fira Code that comes a default with `.brew` role

## Possible issues

During the `brew` role there might be an error related to vagrant Instalation. It's the macOS that is blocking it. Go to macOS preferences -> Security and allow OS to install it. And restart the playbook.