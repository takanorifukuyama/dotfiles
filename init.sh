/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle

export PATH=/opt/homebrew/bin:$PATH

bash ./dotfilesLink.sh

echo "$(which fish)" | sudo tee -a /etc/shells
chsh -s $(which fish)

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install starship ripgrep

# volta install
curl https://get.volta.sh | bash
volta install node@18
