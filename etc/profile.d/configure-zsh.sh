#!/bin/bash

# If a user doesn't have ~/.oh-my-zsh, change the default shell and install oh-my-zsh with plugins
if [ ! -d ~/.oh-my-zsh ]; then
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
fi;

# Check if user disabled Zsh
if [ ! -f ~/.disablezsh ]; then
  # If users shell isn't found to be Zsh according to /etc/passwd, ask to change it
  if [ -z $(cat /etc/passwd | grep $USER | grep zsh) ]; then
    echo "$USER's default shell is not Zsh according to /etc/passwd." && \
    echo "You can disable this check with: touch ~/.disablezsh" && \
    chsh -s $(which zsh) && \
    echo "You may need to sign out and back in for this to apply."
  fi;
fi;

# Set permissions for Zsh
chown $USER:$USER ~/.oh-my-zsh ~/.zshrc -R
