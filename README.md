# Ansible based dotfiles

## Installation

1. Install xcode from the app store.

1. Open xcode and accept the license agreement.

1. Install xcode command line tools:

    ```sh
    xcode-select --install
    ```
1. Run `./bootstrap.sh`

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

## Notes

Run `ansible-playbook -i inventory provision.yml --ask-become-pass`
