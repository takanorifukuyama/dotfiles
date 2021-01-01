alias v "nvim"
alias fc "nvim ~/.config/fish/config.fish"
alias g "git"
alias feature "git flow feature"
alias ga "git add"
alias gp "git push"
alias gst "git status"
alias gc "git commit -am"
alias gcm "git commit -m"
alias gdd "git diff | delta --dark"
alias gb "git branch"
alias gs "git switch"
alias cl clear
alias ef "exec fish -l"
alias ctl "kubectl"
alias ctx "kubectx"
alias ns "kubens"
alias val "kubeval"

set -x PATH ~/.SDK/flutter/bin $PATH
set -x PATH ~/.cargo/bin $PATH
set -x PATH ~/.pyenv/shims $PATH
set -x PATH ~/.pub-cache/bin $PATH
set GHQ_SELECTOR peco
set -x ANDROID_HOME ~/Library/Android/sdk
set -x PATH $ANDROID_HOME/emulator/ $PATH
set -x DART_SDK ~/.SDK/flutter/bin/cache/dart-sdk/bin
set -x PATH $DART_SDK $PATH
set -x PATH ~/.nodebrew/current/bin $PATH

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish ; or true

# starship init fish | source
# pyenv init - | source
# pyenv virtualenv-init - | source

function fish_user_key_bindings
  bind \cr peco_select_history # Bind for prco history to Ctrl+r
end

# eval (hub alias -s)

set -x GOBIN ~/go/bin
set -x GOPATH ~/go
set -x GO111MODULE on
set -x PATH $GOBIN $PATH

set -x PATH /opt/homebrew/bin $PATH
set -x PATH ~/nvim-osx64/bin $PATH
