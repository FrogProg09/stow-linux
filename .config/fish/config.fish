source ~/.config/fish/cachyos-config.fish
set fish_greeting ""
fish_add_path ~/.config/emacs/bin
set -gx SUDO_EDITOR nvim
set -gx EDITOR nvim   
fish_add_path "$HOME/.nix-profile/bin"
