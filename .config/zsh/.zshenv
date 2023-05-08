export LESSHISTFILE=-
export ZDOTDIR=$HOME/.config/zsh
export HISTFILE=$ZDOTDIR/history.zsh
export HISTSIZE=3000
export SAVEHIST=5000
export EDITOR=nvim
export VISUAL=nvim
# GO
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
# GO root
export GOROOT=/usr/local/go
export GOROOTBIN=$GOROOT/bin
# Rust PATH=$HOME/.cargo/bin
# Add  GOBIN and GOROOTBIN to PATH
export PATH=$GOROOTBIN:$GOBIN:$PATH
export BAT_THEME=Nord
