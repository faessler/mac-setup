# Mac Setup
(recommended for frontend developers)

### This bash script will do the following things:

* Install [Homebrew](https://github.com/Homebrew), [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle), [Homebrew-Cask](https://github.com/caskroom/homebrew-cask) & [Homebrew-Cask-Versions](https://github.com/caskroom/homebrew-versions)
* Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) and set it as the default bash profile
* Install all commands from the array starting on line 63
* Install all applications from the array starting on line 15 (find applications from the [Cask](https://caskroom.github.io/search) list)
* Install all available [Google Fonts](https://fonts.google.com/) via the bash script from [Quinton Pike](https://github.com/qrpike/Web-Font-Load)
* Install a couple of useful [powerline fonts](https://github.com/faessler/powerline-fonts-load)
* Improves mac settings (show all files and always attach attachments without preview)
* Install [shell integration tools](https://www.iterm2.com/documentation-shell-integration.html) for iterm2

##### Arrays from line 15 & 63:
```sh
declare -a apps=( "1password" "adobe-acrobat-pro" "airserver" "angry-ip-scanner" "appcleaner" "appearin" "atom" "browserstacklocal" "chrome-devtools" "chromium" "cyberduck" "disk-inventory-x" "docker" "dropbox" "eclipse-ide" "electron" "filezilla" "firefox" "firefoxnightly" "flash-player" "franz" "github-desktop" "gitkraken" "google-chrome" "google-chrome-canary" "google-hangouts" "hyper" "iterm2" "java" "mamp" "opera" "phpstorm" "safari-technology-preview" "skype" "sourcetree" "spotify" "steam" "sublime-text" "teamviewer" "torbrowser" "transmission" "transmit" "visual-studio-code" "vlc" )
declare -a commands=( "bash" "coreutils" "trash" "wget" "git" "git-flow" "node" )
```

### How to use:
1. [Download](https://github.com/faessler/mac-setup/archive/master.zip) and unzip the bash script
2. Open the terminal.app and go to the downloaded mac-setup (master) directory
3. Run the bash file with the command ```bash install.sh```

### Download from Github:
mac-setup [master.zip](https://github.com/faessler/mac-setup/archive/master.zip)
