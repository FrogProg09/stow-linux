# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/cachyos-zsh-config/cachyos-config.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#eval "$(starship init zsh)"

alias v='vim'
alias nv='nvim'
alias y='yazi'
alias b='btop'
alias q='exit'
alias ff='fastfetch'
alias l='ls -l'
alias my-server='ssh frogprog@164.68.120.175'
alias cdh='cd /home/frogprog/.dotfiles/.config/hypr'
alias cdb='cd /home/frogprog/.config/bspwm'
alias cdw='cd /home/frogprog/.config/waybar'
alias cdd='cd /home/frogprog/.dotfiles/'
alias cdn='cd /home/frogprog/.dotfiles/.config/nvim'
alias cdc='cd /home/frogprog/Programming/projects/simple-calculator'
alias cdz='cd /home/frogprog/Programming/projects/my-ergonaut-zmk/'
alias vp='vim /home/frogprog/Programming/practise/commands-to-master.txt'

export EDITOR="$(which nvim)"
export VISUAL="$(which nvim)"
