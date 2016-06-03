#!/usr/bin/env bash

function log() {
	echo -e "\e[0;33m${1}\e[0m";
}

if [ -f $(which brew) ]; then
	log 'Updating Homebrew...'
	brew update
else
	log 'Installing Homebrew...'
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


brew tap homebrew/php

if [ -d $(brew --prefix composer) ]; then
	log 'Upgrading composer...'
	brew upgrade composer
else
	log 'Installing composer...'
	brew install composer
fi

if [ -d $(brew --prefix nvm) ]; then
	log 'Upgrading nvm...'
	brew upgrade nvm
else
	log 'Installing nvm...'
	brew install nvm
fi

mkdir -p ~/.nvm
export NVM_DIR="$HOME/.nvm"
source "$(brew --prefix nvm)/nvm.sh"

log 'Installing latest stable node version...'
nvm install stable


if [ -d $(brew --prefix bash-completion) ]; then
	log 'Upgrading bash-completion...'
	brew upgrade bash-completion
else
	log 'Installing bash-completion...'
	brew install bash-completion
fi


brew tap tditlu/amiga

if [ -d $(brew --prefix vbcc) ]; then
	log 'Upgrading vbcc...'
	brew upgrade tditlu/amiga/vbcc
else
	log 'Installing vbcc...'
	brew install tditlu/amiga/vbcc
fi

if [ -d $(brew --prefix vasm) ]; then
	log 'Upgrading vasm...'
	brew upgrade tditlu/amiga/vasm
else
	log 'Installing vasm...'
	brew install tditlu/amiga/vasm
fi

if [ -d $(brew --prefix vlink) ]; then
	log 'Upgrading vlink...'
	brew upgrade tditlu/amiga/vlink
else
	log 'Installing vlink...'
	brew install tditlu/amiga/vlink
fi

if [ -d $(brew --prefix shrinkler) ]; then
	log 'Upgrading shrinkler...'
	brew upgrade tditlu/amiga/shrinkler
else
	log 'Installing vlink...'
	brew install tditlu/amiga/shrinkler
fi


log 'Copying .bash_profile.d scripts...'
mkdir -p ~/.bash_profile.d
cp -i ./bash/.bash_profile.d/*.sh ~/.bash_profile.d/


log 'Copying .bin scripts...'
mkdir -p ~/.bin
cp -i ./bash/.bin/* ~/.bin/


log 'Copying .bash_profile script...'
cp -i ./bash/.bash_profile ~/
cp -i ./bash/.bashrc ~/
cp -f ./bash/.bash_sessions_disable ~/
