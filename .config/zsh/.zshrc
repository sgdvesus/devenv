setopt autocd
setopt PROMPT_SUBST
bindkey -v
KEYTIMEOUT=1
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.
autoload -U compinit; compinit # Completion
_comp_options+=(globdots) # With hidden files
source $ZDOTDIR/completion.zsh
autoload -Uz vcs_info
precmd(){ vcs_info }
zstyle ':vcs_info:git:*' formats ' %b'

# Add aliases, vim, fzf
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/vimodes.zsh
source $ZDOTDIR/fzf.zsh

PS1='${vcs_info_msg_0_} %3~   '
for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
