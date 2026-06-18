<div align="center">
<img alt="Profiles Pictures" src="https://github.com/FrogProg09/my-linux/blob/82a8df9a627c601c8f17605d98d9bc224ee22d0d/images/github_avatar.png" width="200" height="200"/>
</div>
<div align="center">
    <h1> Frogprog Linux Dotfiles</h1>
    <h4> My fully configured Linux desktop — MangoWM, Fish, Neovim, Doom Emacs, gruvbox everything.</h4>
</div>
</div>


### Things that are used in setup
| Sysetm part | Name |
|---|---|
| Compositor | [MangoWM](https://mangowm.github.io/) |
| Bar | [Waybar](https://github.com/Alexays/Waybar) |
| Lock | [Hyprlock](https://github.com/hyprwm/hyprlock) |
| App launcher | [Rofi-wayland](https://github.com/in0ni/rofi-wayland) |
| Term emulator | [Kitty](https://github.com/kovidgoyal/kitty) |
| Shell | [Fish](https://fishshell.com/) |

## Screenshots

![Desktop](/assets/base.png)
![Doom emacs](/assets/doom-emacs.png)
![Neovim](/assets/nvim.png)
![Terminal](/assets/terminal.png)

## Keybindings

Feel free to change and mess around with them, nothing will break if you know what you are doing after all.
Plus even I personally haven't come up with smth 100% convinient yet.

|Keybind|Result|
|---|---|
| Super + Return | Kitty |
| Super + D | Rofi |
| Super + E | Doom emacs client |
| Super + B | Brave browser |
| Super + S | Screenshot |
| Super + A | Wlogout |
| Super + T | Telegram |
| Super + M | Yandex music |
| Super + Q | Close window |
| Super + V | Toggle floating |
| Super + F | Toggle fullscreen |
| Super + SHIFT + E | Nautilus |
| Super + SHIFT + T | Pomodoro timer |
| Super + H,J,K,L | Move focus |
| Super + 1-0 | Cange tags |
| Super + Shift + 1-0 | Move window to tag |
| ALT + Q | Exit |

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

## Copying

You can basically do whaterver your heart desires with this repo, as long as it's under BSD-3 license.
I would be glad if someone wanted to contribute to this repo!

## Credits

- Thanks [SPROS: 2799](https://www.youtube.com/@5pr05) for inspiration
- Thanks [1amSimp1e](https://github.com/1amSimp1e/dots) for amaizing readme example

*If you need to contact with me:*

- Discord: Frogprog
- Telegram: @frogprog_nerd_official *(preferred)*
