# ENVIROMENT

Environment  Development.

# Table of contents

- [i3 wm](#i3-window-manager)
- [alacritty](#alacritty)
- [tmux](#tmux)
- [zsh](#zsh)

# i3 WINDOW MANAGER

Official site [i3wm](https://i3wm.org/).

- [x] .config/i3/config
- [x] .config/i3status/config

vim_motions = `j` | `k` | `l` | `ñ`

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

# Alacritty

Official [alacritty](https://alacritty.org/).

- [x] .config/alacritty/alacritty.yml

# TMUX

Official [tmux](https://github.com/tmux/tmux).

Require tmsession script.

- [x] .config/tmux/tmux.conf

|Keymaps|Use|
|:---|:---|
|`C-a` | Tmux prefix key. |
|`C-a + s` | Tree mode sessions. |
|`C-a + r` | Reload tmux config. |
|`C-a + L` | Go to previous session. |
|`C-a + f` | New session in selected workspace. |
|`C-a + d` | New session in devenv. |
|`C-a + n` | New session in notes. |
|`C-a + t` | cht.sh script. |
|`C-a + :` | Command prompt. |
|`C-a + c` | New window n. |
|`C-a + &` | Close window. |
|`C-a + n` | Go to window `n`. |
|`C-a + $vimotions` | Change focus pane. |
|`C-a + %` | Split pane vertical. |
|`C-a + "` | Split pane horizontal. |
|`C-a + x` | Kill pane. |

# ZSH

Official [zsh](https://www.zsh.org/)
if you prefer .zshenv in the `$ZDOTDIR` as well, you must setting ZDOTDIR in the global configuration file `/etc/zsh/zshenv`.

- [x] .config/zsh/.zshenv, contain env variables must be in the home directory.
- [x] .config/zsh/.zshrc
- [x] .config/zsh/aliases.zsh
- [x] .config/zsh/completion.zsh

[ZSH vi mode](https://github.com/jeffreytse/zsh-vi-mode)

- [x] .config/zsh/vimodes.zsh
