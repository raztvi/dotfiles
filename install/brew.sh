if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

formulas=(
    # flags should pass through the the `brew list check`
    'macvim --with-override-system-vim'
    ack
    android-sdk
    aws-shell
    cockroachdb/cockroach/cockroach
    diff-so-fancy
    dnsmasq
    ffmpeg
    fzf
    git
    go
    gradle
    heroku
    highlight
    hub
    jenkins
    leiningen
    lua
    markdown
    maven
    mongodb
    mysql
    neovim/neovim/neovim
    node
    nginx
    postgresql
    reattach-to-user-namespace
    rust
    sbt
    scala
    the_silver_searcher
    tmux
    tree
    watchman
    wget
    wine
    yarn
    youtube-dl
    z
    zplug
    zsh
)

for formula in "${formulas[@]}"; do
    if brew list "$formula" > /dev/null 2>&1; then
        echo "$formula already installed... skipping."
    else
        brew install $formula
    fi
done
