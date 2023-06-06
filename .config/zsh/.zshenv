export LESSHISTFILE=-
export ZDOTDIR=$HOME/.config/zsh
export HISTFILE=$ZDOTDIR/history.zsh
export HISTSIZE=3000
export SAVEHIST=5000
export EDITOR=nvim
export VISUAL=nvim
export BAT_THEME=Nord
# GO
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
# GO root
export GOROOT=/usr/local/go
export GOROOTBIN=$GOROOT/bin
# TEXLIVE
export MYTEXLIVE=/usr/local/texlive/2023/bin/x86_64-linux
export MYMANTEXLIVE=/usr/local/texlive/2023/texmf-dist/doc/man
export MYINFOTEXLIVE=/usr/local/texlive/2023/texmf-dist/doc/info
# Rust PATH=$HOME/.cargo/bin
# Add  GOBIN and GOROOTBIN to PATH
export PATH=$GOROOTBIN:$GOBIN:$MYTEXLIVE:$PATH
export INFOPATH=$MYINFOTEXLIVE
export MANPATH=$MYMANTEXLIVE
