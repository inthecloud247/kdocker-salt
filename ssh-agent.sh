#!/bin/bash
#run this as root..

git clone https://github.com/ccontavalli/ssh-ident.git /opt/github/ssh-ident
ln -s /opt/github/ssh-ident/ssh-ident /opt/ssh-ident
echo "alias ssh='/opt/github/ssh-ident/ssh-ident'" >> ~/.bash_aliases
#then logout/login and ssh-agent now works properly..
