echo -e "\n\nInstalling homebrew casks..."
echo "=============================="

formulas=(
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
)

for formula in "${formulas[@]}"; do
    if brew list "$formula" > /dev/null 2>&1; then
        echo "$formula already installed... skipping."
    else
        brew cask install $formula
    fi
done
