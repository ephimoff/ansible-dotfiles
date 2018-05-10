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
    
1. Run the playbook:
    ```
    ansible-playbook provision.yml
    ```

## TODO

- [x] dotfiles
- [x] ruby
- [x] node apps
- [x] mas
- [x] maybe restructure code a little bit better: split based on a role
- [x] travis
- [x] proper readme
- [x] review and update extra re-installs, i.e. VS Code extensions
- [x] task for backing up dotfiles
- [x] vim
    - [ ] vim packages
- [x] ssh
    - [ ] to add orion hosts (check the tags or conditions)
- [ ] symlink scripts folder - optional (`ln -s ~/Projects/scripts ~/.scripts`)
- [ ] add conditions to some tasks (e.g. brew clean only if apps installed)

## Manual steps

- Add license for Bettertouch Tool, or purchase one
- The default theme for zsh is Power9K and uses a ligature font. To enable it got to Terminal -> Preferences -> Profile -> Font and choose the ligature font. I prefer Fira Code that comes a default with `.brew` role

## Possible issues

During the `brew` role there might be an error related to vagrant Instalation. It's the macOS that is blocking it. Go to macOS preferences -> Security and allow OS to install it. And restart the playbook.

## Useful flags for `ansible-playbook`

See more flags [here](https://docs.ansible.com/ansible/2.4/ansible-playbook.html)

- `--tags "tag-name"` to provision only certain tags
- `--skip-tags "tag-name1, tag-name2"` to provision without these tags
- `--list-tasks` list all tasks that would be executed
- `-T <TIMEOUT>, --timeout <TIMEOUT>` override the connection timeout in seconds (default=10)
- `-e, --extra-vars` set additional variables as key=value or YAML/JSON, if filename prepend with @
- `-i, --inventory, --inventory-file` specify inventory host path (default=[[u’/etc/ansible/hosts’]]) or comma separated host list. 
- `-v, --verbose` verbose mode (-vvv for more, -vvvv to enable connection debugging)