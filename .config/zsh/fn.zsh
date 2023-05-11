# COLOR TERMINAL LIST
function colorlis(){
    for i in {0..255}; do print -Pn "%K{$i}   %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

# FZF HISTORY
function review(){
    cat $ZDOTDIR/history.zsh | fzf | read foo
    LBUFFER="$foo"
    zle reset-prompt
}
zle -N review
bindkey '^h' review
