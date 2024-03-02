# plugins
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

# Lines configured by zsh-newuser-install
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e

# Editor
export EDITOR="nvim"

# keys
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey '^H' backward-kill-word
bindkey '5~' kill-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

autoload -Uz compinit
compinit
# End of lines added by compinstall

# starship
eval "$(starship init zsh)"

# paths
path+=~/.scripts/misc

# grep colors
alias grep='grep --color=auto'

# ls colors
alias ls="lsd"

# lazy commands
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# lazy apps
alias n='nvim'
alias gg='lazygit'
alias nrd='npm run dev'

# go to code directory
go_to_code () {
  cd /home/prithvi/Documents/Projects || echo "/Code doesn't exist." || exit
  PS3="Select project: "
  projects=($(ls -d */))
  select prj in "${projects[@]}"; do
  	cd "$prj" || echo "aser"
  	break
  done
  # PS3="Open Editor: "
  # optns=("Yes", "No")
  # select opt in "${optns[@]}"; do
  #   case "$opt" in
  #     "Yes") nvim
  #     ;;
  #     "No") break
  #     ;;
  #     *) nvim
  #     ;;
  #   esac
  # 	break
  # done
  nvim
}
alias c='go_to_code'

# go to config
go_to_config() {
  cd ~/.config/$1
  nvim
}
alias conf='go_to_config'

# go to .dotfiles.config
go_to_dot_config() {
  cd ~/.dotfiles.config
  nvim
}
alias dotc='go_to_dot_config'

# go to .dotfiles.theme
go_to_dot_theme() {
  cd ~/.dotfiles.theme
  nvim
}
alias dott='go_to_dot_theme'

alias relaunch='launch-waybar.sh'
