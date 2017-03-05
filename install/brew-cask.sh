echo -e "\n\nInstalling homebrew casks..."
echo "=============================="

formulas=(
    
)

for formula in "${formulas[@]}"; do
    if brew list "$formula" > /dev/null 2>&1; then
        echo "$formula already installed... skipping."
    else
        brew install $formula
    fi
done
