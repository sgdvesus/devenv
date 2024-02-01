# ENVIROMENT

Environment  development.
vim_motions = left `h` | down `j` | up `k` | right `l`

# TABLE OF CONTENTS

- [brave](#brave)
- [git](#git)
- [nvim](#nvim)
- [alacritty](#alacritty)
- [i3 wm](#i3-window-manager)
- [zsh](#zsh)
- [tmux](#tmux)
- [redshift](#redshift)
- [zathura](#zathura)
- [mpv](#mpv)
- [fzf](#fzf)
- [fd](#fd)
- [ripgrep](#ripgrep)
- [bat](#bat)
- [picom](#picom)
- [feh](#feh)
- [polkit](#polkit)

# Brave

The new brave browser blocks ads and trackers that slow you down and invade your privacy. Discover a new way of thinking about how the web can work. Official site [brave browser](https://brave.com/download/).

# Git

Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency. Official site [git](https://git-scm.com/download/linux).

For ubuntu, this ppa provides the latest stable upstream git version:

```sh
sudo add-apt-repository ppa:git-core/ppa && sudo apt update; apt install git
```

Generating a new ssh key and adding it to the [ssh-agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

# Nvim

Hyperextensible vim-based text editor. Official site [nvim](https://neovim.io/).

Install neovim build from [source](https://github.com/neovim/neovim/blob/master/build.md).

Use packer as plugin manager.

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

# Alacritty

A cross-platform, opengl terminal emulator. Official site [alacritty](https://alacritty.org/).

Install alacritty from [source](https://github.com/alacritty/alacritty/blob/master/install.md#prerequisites) requires rustup setup.

- [x] .config/alacritty/alacritty.toml

# i3 window manager

i3 is a tiling window manager, completely written from scratch. Official site [i3wm](https://i3wm.org/).

This ubuntu repository is provided by sur5r and contains the latest stable release of i3:

```sh
/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2023.02.18_all.deb keyring.deb sha256:a511ac5f10cd811f8a4ca44d665f2fa1add7a9f09bef238cdfad8461f5239cc4
sudo apt install ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^distrib_codename=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
sudo apt update && sudo apt install i3
```

- [x] .config/i3/config
- [x] .config/i3status/config

> Require usrecord script.

|keymaps|use|
|:---|:---|
|`$mod+return` | start alacritty terminal. |
|`$mod+d` | start i3-dmenu-desktop a program launcher with `fzf`. |
|`$mod+f` | fullscreen for container. |
|`$mod+r` | resize mode. |
|`$mod+vim_motions` | change focus window. |
|`$mod+shift+vim_motions` | move focused window. |
|`mouse+$mod` | drag floating window. |
|`$mod+shift+space` | toggle tilling/floating. |
|`$mod+print` | take a screenshot. |
|`$mod+shift+f` | record screen. |
|`$mod+n` | go to workspace `n`. |
|`$mod+shift+n` | move container to workspace `n`. |
|`$mod+shift+q` | kill focus window. |
|`$mod+shift+c` | reload i3 config. |
|`$mod+shift+r` | restart i3. |
|`$mod+shift+e` | exit i3. |

# Zsh

Zsh is a shell designed for interactive use, although it is also a powerful scripting language. Official site [zsh](https://www.zsh.org/).

Install zsh:

```sh
sudo apt install zsh`.
```

Make zsh default shell(logout):

```sh
chsh -s $(which zsh)
```

If you prefer .zshenv in the `$zdotdir` as well, you must setting ZDOTDIR in the global configuration file `/etc/zsh/zshenv`.

- [x] .config/zsh/.zshenv, contain env variables must be in the home directory.
- [x] .config/zsh/.zshrc
- [x] .config/zsh/aliases.zsh
- [x] .config/zsh/completion.zsh
- [x] .config/zsh/fn.zsh

|keymaps|use|
|:---|:---|
|`c-h` | `fzf` history. |

[zsh vi mode](https://github.com/jeffreytse/zsh-vi-mode)

- [x] .config/zsh/vimodes.zsh

# Tmux

Tmux is a terminal multiplexer: it enables a number of terminals to be created, accessed, and controlled from a single screen. Tmux may be detached from a screen and continue running in the background, then later reattached. Official site[tmux](https://github.com/tmux/tmux).

Install tmux:

```sh
sudo apt install tmux
```

> Require tmsession script.

- [x] .config/tmux/tmux.conf

|keymaps|use|
|:---|:---|
|`c-a` | tmux prefix key. |
|`c-a + s` | tree mode sessions. |
|`c-a + r` | reload tmux config. |
|`c-a + [` | start copy-mode. |
|`v` | start selection in copy-mode. |
|`y` | yank selection to clipboard in copy-mode. |
|`c-a + l` | go to previous session. |
|`c-a + f` | new session in selected workspace. |
|`c-a + d` | new session in devenv. |
|`c-a + n` | new session in notes. |
|`c-a + t` | cht.sh script. |
|`c-a + :` | command prompt. |
|`c-a + c` | new window n. |
|`c-a + &` | close window. |
|`c-a + n` | go to window `n`. |
|`c-a + $vim_motions` | change focus pane. |
|`c-a + %` | split pane vertical. |
|`c-a + "` | split pane horizontal. |
|`c-a + x` | kill pane. |

# Redshift

Redshift adjusts the color temperature of your screen according to your surroundings. This may help your eyes hurt less if you are working in front of the screen at night. Official site [redshift](https://github.com/jonls/redshift).

Install redshift:

```sh
sudo apt install redshift
```

- [x] .config/redshift.conf

# Zathura

Zathura is a highly customizable and functional document viewer. It provides a minimalistic and space saving interface as well as an easy usage that mainly focuses on keyboard interaction. Official site [zathura](https://pwmt.org/projects/zathura).

Install zathura:

```sh
sudo apt install zathura
```

- [x] .config/zathura/zathurarc

|keymaps|use|
|:---|:---|
|`vim_motions` | moves. |
|`shift+h` | go to the top of the currently selected page. |
|`shift+l` | go to the bottom of the currently selected page. |
|`m+n` | new bookmark `n`. |
|`n+'` | load bookmark `n`. |
|`shift+f` | show links in the page. |
|`f` | load links. |
|`a` | fit the height of the current page to the display window. |
|`s` | fit the width of the current page to the display window. |
|`c-u` | move the document display window half a page up. |
|`c-d` | move the document display window half a page down. |
|`tab` | index. |
|`=` | reset zoom. |
|`$zoom+=` | set zoom to $zoom. |
|`d` | booklet format. |
|`c-r` | recolor. |
|`shift+r` | refresh document. |
|`r` | rotate by 90 degrees. |
|`/` | search term. |
|`q` | close. |

# Mpv

Mpv is a free (as in freedom) media player for the command line. Official site [mpv](https://mpv.io/installation/).

Install mpv:

```sh
sudo apt install mpv
```

# Fzf

A command-line fuzzy finder. Official site [fzf](https://github.com/junegunn/fzf).

Install fzf from git:

```sh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

# Fd

A simple, fast and user-friendly alternative to 'find'. Official site [fd](https://github.com/sharkdp/fd).

Install fd:

```sh
sudo apt install fd-find
```

> `fdfind` as the binary name fd is already used by another package. It is recommended that after installation, you add a link to fd by executing command `ln -s $(which fdfind) ~/.local/bin/fd`, in order to use `fd` in the same way as in this documentation. Make sure that $HOME/.local/bin is in your $PATH.

# Ripgrep

Ripgrep can be installed using a binary .deb file provided in each ripgrep release. Official site [ripgrep](https://github.com/burntsushi/ripgrep).

```sh
curl -lo https://github.com/burntsushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb
```

# Bat

A cat(1) clone with wings. Official site [bat](https://github.com/sharkdp/bat).

Install bat:

```
sudo apt install bat
```

> If you install bat this way, please note that the executable may be installed as batcat instead of bat (due to a name clash with another package). You can set up a bat -> batcat symlink or alias to prevent any issues that may come up because of this and to be consistent with other distributions:

```sh
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
```

# Picom

A lightweight compositor for X11. Official site [picom](https://github.com/yshui/picom).

Install picom:

```sh
sudo apt install picom
```

# Feh

Install feh:

```sh
sudo apt install feh
```

# Polkit

PolicyKit-gnome provides a D-Bus session bus service that is used to bring up authentication dialogs used for obtaining privileges.

Install polkit:

```sh
sudo apt install policykit-1-gnome
```

Added agent on `~/.config/i3/config`.
