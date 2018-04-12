# Ansible based dotfiles

## TODO

- vim packages
- ssh
- travis
- proper readme
    - a manual step to enable right font in terminal
- maybe restructure code a little bit better: split based on a role
- symlink scripts folder - optional (`ln -s ~/Projects/scripts ~/.scripts`)
- node apps

## Notes

Run `ansible-playbook -i inventory provision.yml --ask-become-pass`
