# dotfiles

```shell
git clone --recursive git@github.com:takanorifukuyama/dotfiles.git
```

homebrew のインストール
https://brew.sh/index_ja

### run

```
brew bundle install
mkdir ../.SDK
source dotfiles.sh
```

## fish

### initialize for your mac

following apolication required.

- homebrew
- https://github.com/fikovnik/ShiftIt or magnet from appstore
- https://github.com/Clipy/Clipy

### starship

starship は homebrew じゃなくて cargo でインストールするのが良さそう

```
cargo install starship
```

### initialize fish

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

### fig

https://github.com/withfig/fig/issues/1579

macOS 12.4.0
iTerm2 3.4.15
fish 3.5.0
starship 1.9.1
Fig 1.0.58

のような環境でうまく動かなかった

```shell
fig settings app.beta true
fig update
```

ってやるといいらしい
