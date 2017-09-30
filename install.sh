#!/bin/bash
#
# ╔╦╗╔═╗╔═╗  ╔═╗╔═╗╔╦╗╦ ╦╔═╗
# ║║║╠═╣║    ╚═╗║╣  ║ ║ ║╠═╝
# ╩ ╩╩ ╩╚═╝  ╚═╝╚═╝ ╩ ╚═╝╩
#
# © 2017 BY JAN FAESSLER
#


# **************************
# THINGS TO INSTALL (ARRAYS)
# **************************
# Apps to install
declare -a apps=(
  "1password"
  "adobe-acrobat-pro"
  "airserver"
  "angry-ip-scanner"
  "appcleaner"
  "appearin"
  "atom"
  "browserstacklocal"
  "chrome-devtools"
  "chromium"
  "cyberduck"
  "disk-inventory-x"
  "docker"
  "dropbox"
  "eclipse-ide"
  "electron"
  "filezilla"
  "firefox"
  "firefoxnightly"
  "flash-player"
  "franz"
  "github-desktop"
  "gitkraken"
  "google-chrome"
  "google-chrome-canary"
  "google-hangouts"
  "hyper"
  "iterm2"
  "java"
  "mamp"
  "opera"
  "phpstorm"
  "safari-technology-preview"
  "skype"
  "sourcetree"
  "spotify"
  "steam"
  "sublime-text"
  "teamviewer"
  "torbrowser"
  "transmission"
  "transmit"
  "visual-studio-code"
  "vlc"
)

# Commands to install
declare -a commands=(
  "bash"
  "coreutils"
  "trash"
  "wget"
  "git"
  "git-flow"
  "node"
)


# **************************
# VARIABLES
# **************************
# Font styles
n=`tput sgr0` # normal
b=`tput bold` # bold
u=`tput smul` # underline

# Timestamp
ts=`date "+%d.%m.%Y-%H:%M:%S"`

# Username
un=$USER


# **************************
# DEPENDENCIES
# **************************
# HOMEBREW
# Install
if ! which brew &>/dev/null
then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update & Cleanup
brew update
brew upgrade
brew cleanup

# Install Taps
brew tap Homebrew/bundle
brew tap caskroom/cask
brew tap caskroom/versions

# XCODE
# Install Xcode command line tools (should already be installed from homebrew)
if ! which xcode-select &>/dev/null
then
  xcode-select --install
fi


# **************************
# COMMAND LINE / TERMINAL
# **************************
# OH MY ZSH
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install zsh zsh-completions

# Set oh-my-zsh as default bash profile file
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.zshrc

# COMMAND LINE TOOLS
# Install commands from array on line 63
for i in "${commands[@]}"
do
	if ! [ "$(type -t $i)" -o "$(brew ls --versions $i)" ]; then
		brew install $i
	fi
done


# **************************
# APPS
# **************************
# Install apps from array on line 15
for i in "${apps[@]}"
do
	if ! ls /Applications/ | grep -i $i; then
		brew cask install $i
	fi
done


# **************************
# FONTS
# **************************
# GOOGLE FONTS
# Install all available fonts from goole fonts
curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | sh

# POWERLINE FONTS
# Install a set of usefull commandline fonts
curl https://raw.githubusercontent.com/faessler/powerline-fonts-load/master/install.sh | sh


# **************************
# IMPROVEMENTS
# **************************
# MAC SYSTEM PREFERENCES
# Show hidden files and folders
defaults write com.apple.finder AppleShowAllFiles YES

# MAC MAIL
# Disable inline attachments in mac mail
defaults write com.apple.mail DisableInlineAttachmentViewing -bool YES

# ITERM2
# Install shell integration
curl -L https://iterm2.com/shell_integration/install_shell_integration.sh | bash
