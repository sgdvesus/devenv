# ENVIROMENT

Environment  Development.

# Table of contents

- [i3 wm](#i3-window-manager)
- [redshift](#redshift)
- [zathura](#zathura)
- [alacritty](#alacritty)
- [tmux](#tmux)
- [zsh](#zsh)
- [nvim](#nvim)

Requires configurations:

- Install [fzf](https://github.com/junegunn/fzf), [fd](https://github.com/sharkdp/fd), [ripgrep](https://github.com/BurntSushi/ripgrep).
vim_motions = left `h` | down `j` | up `k` | right `l`

# i3 WINDOW MANAGER

Official site [i3wm](https://i3wm.org/).

- [x] .config/i3/config
- [x] .config/i3status/config

Require usrecord script.

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
|`$mod+Print` | Take a screenshot. |
|`$mod+shift+f` | Record screen. |
|`$mod+n` | Go to workspace `n`. |
|`$mod+shift+n` | Move container to workspace `n`. |
|`$mod+shift+q` | Kill focus window. |
|`$mod+shift+c` | Reload i3 config. |
|`$mod+shift+r` | Restart i3. |
|`$mod+shift+e` | Exit i3. |

# Redshift

Official [Redshift](https://github.com/jonls/redshift) adjust color temperature.

- [x] .config/redshift.conf

# Zathura

Official [Zathura](https://pwmt.org/projects/zathura)a document viewer.

- [x] .config/zathura/zathurarc

|Keymaps|Use|
|:---|:---|
|`vim_motions` | Moves. |
|`shift+h` | Go to the top of the currently selected page. |
|`shift+l` | Go to the bottom of the currently selected page. |
|`m+n` | New bookmark `n`. |
|`n+'` | Load bookmark `n`. |
|`shift+f` | Show links in the page. |
|`f` | Load links. |
|`a` | Fit the height of the current page to the display window. |
|`s` | Fit the width of the current page to the display window. |
|`C-u` | Move the document display window half a page up. |
|`C-d` | Move the document display window half a page down. |
|`tab` | Index. |
|`=` | Reset zoom. |
|`$zoom+=` | Set zoom to $zoom. |
|`d` | Booklet format. |
|`C-r` | Recolor. |
|`shift+r` | Refresh document. |
|`r` | Rotate by 90 degrees. |
|`/` | Search term. |
|`q` | Close. |

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
|`C-a + [` | Start copy-mode. |
|`v` | Start selection in copy-mode. |
|`y` | Yank selection to clipboard in copy-mode. |
|`C-a + L` | Go to previous session. |
|`C-a + f` | New session in selected workspace. |
|`C-a + d` | New session in devenv. |
|`C-a + n` | New session in notes. |
|`C-a + t` | cht.sh script. |
|`C-a + :` | Command prompt. |
|`C-a + c` | New window n. |
|`C-a + &` | Close window. |
|`C-a + n` | Go to window `n`. |
|`C-a + $vim_motions` | Change focus pane. |
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
- [x] .config/zsh/fn.zsh

|Keymaps|Use|
|:---|:---|
|`C-h` | `fzf` history. |

[ZSH vi mode](https://github.com/jeffreytse/zsh-vi-mode)

- [x] .config/zsh/vimodes.zsh

# NVIM

Official [nvim](https://neovim.io/). Use Packer as plugin manager.

- [x] .config/nvim/init.lua
- [x] .config/nvim/lua/keymaps.lua
- [x] .config/nvim/lua/settings.lua
- [x] .config/nvim/lua/usplugins.lua
- [x] .config/nvim/after/plugin/bufferline.lua
- [x] .config/nvim/after/plugin/comment.lua
- [x] .config/nvim/after/plugin/lualine.lua
- [x] .config/nvim/after/plugin/neosolarized.lua
- [x] .config/nvim/after/plugin/telescope.lua
- [x] .config/nvim/after/plugin/treesitter.lua
- [x] .config/nvim/after/plugin/mason-lspconfig.lua
