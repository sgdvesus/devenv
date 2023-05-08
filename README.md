# ENVIROMENT

Environment  Development.

# Table of contents

- [i3 wm](##i3-window-manger)
- [zsh](##zsh)

## i3 WINDOW MANAGER

Official site [i3wm](https://i3wm.org/).

- [x] .config/i3/config
- [x] .config/i3status/config

vim_motions = j|k|l|ñ

|Keymaps|Use|
|:---|:---|
|`$mod+return` | Start alacritty terminal. |
|`$mod+d` | Start i3-dmenu-desktop a program launcher with `fzf`. |
|`$mod+f` | Fullscreen for container. |
|`$mod+r` | Resize mode. |
|`$mod+vim_motions` | Change focus window. |
|`$mod+shift+vim_motions` | Move focused window. |
|`Mouse+$mod` | Drag floating window. |
|`$mod+shift+space` | Toggle tilling/floating. |
|`$mod+n` | Go to workspace `n`. |
|`$mod+shift+n` | Move container to workspace `n`. |
|`$mod+shift+q` | Kill focus window. |
|`$mod+shift+c` | Reload i3 config. |
|`$mod+shift+r` | Restart i3. |
|`$mod+shift+e` | Exit i3. |

## ZSH

Official [zsh](https://www.zsh.org/)

- [x] .config/zsh/.zshenv, contain env variables must be in the home directory.
- [x] .config/zsh/.zshrc
- [x] .config/zsh/aliases.zsh
- [x] .config/zsh/completion.zsh

[ZSH vi mode](https://github.com/jeffreytse/zsh-vi-mode)

- [x] .config/zsh/vimodes.zsh
