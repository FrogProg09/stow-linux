# FrogProg's Dotfiles

My fully configured Linux desktop — MangoWM, Fish, Neovim, Doom Emacs,
gruvbox everything.

![Desktop](assets/base.png)
![Doom emacs](assets/doom-emacs.png)
![Neovim](assets/nvim.png)
![Terminal](assets/terminal.png)

## Installation

### 1. Install dependencies

#### Window manager

```bash
sudo pacman -S waybar swaync wlogout rofi swaybg hyprlock hypridle polkit-gnome xdg-desktop-portal-wlr
```

**AUR**

``` bash
paru -S mango-git kanata gnome-shell-pomodoro
```

#### Terminal and Shell

``` bash
sudo pacman -S kitty fish eza bat jq hwinfo expac pacman-contrib curl
```

#### Editor & tools

``` bash
sudo pacman -S neovim gvim emacs git stow
```

#### Sound, media and hardware

``` bash
sudo pacman -S wireplumber playerctl pavucontrol brightnessctl blueman networkmanager
```

#### Screenshot and clipboard

``` bash
sudo pacman -S grim slurp wl-clipboard libnotify
```

#### Fonts

``` bash
sudo pacman -S ttf-hack-nerd ttf-jetbrains-mono-nerd nerd-fonts-symbols-only
```

**AUR**

``` bash
paru -S ttf-sf-pro
```

#### Nvim lsp servers 

``` bash
sudo pacman -S clang python-lsp-server lua-language-server
```


``` bash
sudo npm i -g vscode-langservers-extracted
```

#### Doom Emacs extras

``` bash
sudo pacman -S cmake libvterm make gcc python rust nodejs npm hunspell languagetool jdk-openjdk
```

### 2. Clone & stow

``` bash
git clone git@github.com:FrogProg09/stow-linux.git ~/.dotfiles
cd ~/.dotfiles
stow .
```

### 3. Post-install

- Neovim — opens automatically installs lazy.nvim and plugins
- Doom Emacs — run doom install and doom sync
- MangoWM — select MangoWM from your display manager
