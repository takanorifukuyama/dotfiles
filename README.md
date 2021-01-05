# dotfiles

## initialize dotfile

```
source dotfiles.sh
```

## fish

### initialize for your mac

following apolication required.

- homebrew
- https://github.com/fikovnik/ShiftIt or magnet from appstore
- https://github.com/Clipy/Clipy

### initialize fish

```fish
brew install fish peco ghq fzf
```

```fish
# /opt/homebrew/bin/fish を最後の行に追加
sudo vi /etc/shells
```

change default shell
```fish 
chsh -s /opt/homebrew/bin/fish
```

Specifies the directory which manages the repository with ghq

```fish
git config --global ghq.root ~/git
```

### fisher setup

https://github.com/jorgebucaran/fisher/

```fish
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
```

```fish
fisher
```
