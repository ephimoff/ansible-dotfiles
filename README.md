# Ansible based dotfiles

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
- ~~vim~~
    - vim packages
- ~~ssh~~
    - to add orion hosts (check the tags or conditions)
- travis
- proper readme
    - a manual step to enable right font in terminal
- symlink scripts folder - optional (`ln -s ~/Projects/scripts ~/.scripts`)
- add conditions to some tasks (e.g. brew clean only if apps installed)
- role as a dependecy for another role
- review and update extra re-installs, i.e. VS Code extensions

## Manual steps

- Add license for Bettertouch Tool, or purchase one
- Enable right ligature font in Terminal

## Possible issues

During the `brew` role there might be an error related to vagrant Instalation. It's the macOS that is blocking it. Go to macOS preferences -> Security and allow OS to install it. And restart the playbook.