#!/bin/bash
cmds=(find man tldr sed awk tr cp ls grep xargs rg ps mv kill lsof less head tail tar cp rm rename jq cat ssh cargo git git-worktree git-status git-commit git-rebase docker docker-compose stow chmod chown make)
languajes=(golang solidity vlang v nodejs javascript tmux typescript zsh cpp c lua rust python bash php haskell ArnoldC css html gdb)
selected=$(echo "${cmds[@]} ${languajes[@]}" | tr ' ' '\n' | fzf)
read -p "query: " query

if echo "${languajes[@]}" | grep -qs $selected; then
    tmux neww bash -c "curl -s cht.sh/$selected/`echo $query | tr ' ' '\n'` | less -r"
else
    tmux neww bash -c "curl -s cht.sh/$selected\~$query | less -r"
fi
