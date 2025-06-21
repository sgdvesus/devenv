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
export MYTEXLIVE=/usr/local/texlive/2024/bin/x86_64-linux
export MYMANTEXLIVE=/usr/local/texlive/2024/texmf-dist/doc/man
export MYINFOTEXLIVE=/usr/local/texlive/2024/texmf-dist/doc/info
# Rust PATH=$HOME/.cargo/bin
# Add  GOBIN and GOROOTBIN to PATH
export LBIN=$HOME/.local/bin
export PATH=$GOROOTBIN:$GOBIN:$MYTEXLIVE:$LBIN:$PATH
export INFOPATH=$MYINFOTEXLIVE:$INFOPATH
export MANPATH=$MYMANTEXLIVE:$MANPATH
# POSTGRESQL
export DBNAME='newtoncrops'
export DBUSER='newton'
export DBPASS='everythingispermitted'
export DBHOST='localhost'
export DBPORT='5432'

