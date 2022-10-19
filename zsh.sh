#!/usr/bin/env bash

# Install custom fonts
wget -P ~/Library/Fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget -P ~/Library/Fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget -P ~/Library/Fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget -P ~/Library/Fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf

wget -P /tmp https://github.com/cancng/fonts/raw/master/DankMono.zip
unzip -d /tmp/dankmono /tmp/DankMono.zip
rsync -a -v --ignore-existing /tmp/dankmono/*.otf ~/Library/Fonts
rm -rf /tmp/DankMono.zip /tmp/dankmono

# Setup OhMyZsh and theme
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
