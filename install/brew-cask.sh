echo -e "\n\nInstalling Homebrew cask"
brew tap caskroom/cask

echo -e "\n\nInstalling homebrew casks..."
echo "=============================="

casks=(
       google-chrome 
       firefox
       1password
       skype
       bartender
       alfred
       iterm2
       atom
       intellij-idea
       pycharm
       rubymine
       sequel-pro
       slack
       whatsapp
       webstorm
       spotify
       coconutbattery
       github-desktop
       sourcetree
       caption
       docker
       hacker-menu
       handbrake
       postman
       robomongo
       spectacle
       transmit
       visual-studio-code
       vlc
       unetbootin
       textmate
       teamviewer
       nosleep
       caffeine
       canary
)

applications=$(/Applications/*)

for cask in "${casks[@]}"; do
    if brew list "$cask" > /dev/null 2>&1; then
        echo "$cask already installed... skipping."
    else
        brew cask install $cask
    fi
done



