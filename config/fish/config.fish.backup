# rust
set -x PATH ~/.cargo/bin $PATH

# python
set -x PATH ~/.pyenv/shims $PATH

# android studio
set -x ANDROID_HOME ~/Library/Android/sdk
set -x PATH $ANDROID_HOME/emulator/ $PATH
set -x PATH $ANDROID_HOME/platform-tools $PATH

# flutter
set -x PATH ~/.SDK/flutter/bin $PATH
set -x DART_SDK ~/.SDK/flutter/bin/cache/dart-sdk/bin
set -x PATH ~/.pub-cache/bin $PATH
set -x PATH $DART_SDK $PATH

set -x PATH ~/.SDK/google-cloud-sdk/bin $PATH

# nodejs
set -x VOLTA_HOME $HOME/.volta
set -x PATH $VOLTA_HOME/bin $PATH

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish ; or true

starship init fish | source

# python
set -x PATH ~/miniforge3/bin $PATH
# pyenv init - | source
# pyenv virtualenv-init - | source

set GHQ_SELECTOR peco
function fish_user_key_bindings
  bind \cr peco_select_history # Bind for prco history to Ctrl+r
end

# eval (hub alias -s)

set -x GOBIN ~/go/bin
set -x GOPATH ~/go
set -x GO111MODULE on
set -x PATH $GOBIN $PATH

# apple silicon setting
set -x PATH /opt/homebrew/bin $PATH
# set -x PATH ~/nvim-osx64/bin $PATH

set -x JAVA_HOME /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home


# Wasmer
export WASMER_DIR="/Users/takanorifukuyama/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
