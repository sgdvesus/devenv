bindkey -v
autoload -U compinit; compinit # Completion
_comp_options+=(globdots) # With hidden files
autoload -Uz vcs_info
precmd(){ vcs_info }
autoload -Uz zsh/parameter
autoload -Uz zsh/widget
# ADD ALIASES, VIM, FZF
source $ZDOTDIR/completion.zsh
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/fn.zsh
source $ZDOTDIR/vimodes.zsh
source $ZDOTDIR/fzf.zsh
# SET OPTIONS
setopt autocd
setopt PROMPT_SUBST
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
# ZSTYLE
zstyle ':vcs_info:git:*' formats ' %b'
PS1='${vcs_info_msg_0_} %3~   '
colorlis
# '^S' C-q, '^D' EOF
