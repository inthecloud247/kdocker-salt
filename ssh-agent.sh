#!/bin/bash
#run this as root..

git clone https://github.com/ccontavalli/ssh-ident.git /opt/github/ssh-ident
ln -s /opt/github/ssh-ident/ssh-ident /opt/ssh-ident
echo "alias ssh='/opt/github/ssh-ident/ssh-ident'" >> ~/.bash_aliases
#then logout/login and ssh-agent now works properly..


# or... and this worked really well.
#add to ~/.ssh/config file for the user who will be deploying the code:

HostName github.com
User git
IdentityFile "/root/.ssh/id_rsa_github"
IdentitiesOnly yes
