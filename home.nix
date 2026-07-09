{ config, pkgs, ... }:

{
    home.username = "frogprog";
    home.homeDirectory = "/home/frogprog";
    home.stateVersion = "24.11";
    nixpkgs.config.allowUnfree = true;
    nixpkgs.config.permittedInsecurePackages = [ "zoom-us" ];


# Packages go here
    home.packages = with pkgs; [
        waybar
            wlogout
            swaynotificationcenter
            wlr-randr
            wl-clipboard
            gtk-engine-murrine
            rofi
            kitty
            fish
            emacs
            hunspell
            hunspellDicts.en_US
            hunspellDicts.ru_RU
            vim-full
            neovim
            ripgrep
            lua-language-server
            pandoc
            firefox
            telegram-desktop
            yandex-music
            nautilus
            vlc
            mpv
            qbittorrent
            gnome-pomodoro
            obs-studio
            zathura
            zoom-us
            git
            opencode
            btop
            figlet
            fastfetch
            lazygit
            yazi
            calc
            bat
            slurp
            grim
            ];

    # Dotfiles go here
    xdg.configFile = {
        "colors.css".source              = ./.config/colors.css;
        "starship.toml".source           = ./.config/starship.toml;
        "hypr"                           = { source = ./.config/hypr; recursive = true; };
        "kitty"                          = { source = ./.config/kitty; recursive = true; };
        "nvim"                           = { source = ./.config/nvim; recursive = true; };
        "waybar"                         = { source = ./.config/waybar; recursive = true; };
        "rofi"                           = { source = ./.config/rofi; recursive = true; };
        "fish"                           = { source = ./.config/fish; recursive = true; };
        "doom"                           = { source = ./.config/doom; recursive = true; };
        "swaync"                         = { source = ./.config/swaync; recursive = true; };
        "systemd/user"                   = { source = ./.config/systemd/user; recursive = true; };
        "wlogout"                        = { source = ./.config/wlogout; recursive = true; };
        "kanata"                         = { source = ./.config/kanata; recursive = true; };
        "StartTree"                      = { source = ./.config/StartTree; recursive = true; };
        "wallpapers"                     = { source = ./.config/wallpapers; recursive = true; };
    };

    home.file = {
        ".vimrc".source                  = ./.vimrc;
        ".vimrc.plug".source             = ./.vimrc.plug;
    };

    programs.home-manager.enable = true;
}
