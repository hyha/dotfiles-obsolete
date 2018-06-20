# ENV VARS
	HISTFILE=~/.zsh_history
	SAVEHIST=1000
	setopt inc_append_history
	setopt share_history

# ALIASES
	alias v="vim -p"
	alias l="ls -la"
	alias ll="ls -la"

# SETTINGS
	export VISUAL=vim

source ~/dotfiles/zsh/plugins/fixls.zsh

stty -ixon

source ~/dotfiles/zsh/plugins/oh-my-zsh/lib/git.zsh
source ~/dotfiles/zsh/plugins/oh-my-zsh/lib/history.zsh
source ~/dotfiles/zsh/plugins/oh-my-zsh/lib/key-bindings.zsh
source ~/dotfiles/zsh/plugins/oh-my-zsh/lib/completion.zsh
source ~/dotfiles/zsh/plugins/oh-my-zsh/lib/theme-and-appearance.zsh
#source ~/dotfiles/zsh/plugins/vi-mode.plugin.zsh
source ~/dotfiles/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles/zsh/keybindings.sh

# Fix for arrow-key searching
# start typing + [Up-Arrow] - fuzzy find history forward
if [[ "${terminfo[kcuu1]}" != "" ]]; then
	autoload -U up-line-or-beginning-search
	zle -N up-line-or-beginning-search
	bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
	autoload -U down-line-or-beginning-search
	zle -N down-line-or-beginning-search
	bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi

#source ~/dotfiles/zsh/prompt.sh
#source ~/dotfiles/zsh/plugins/oh-my-zsh/themes/agnoster.zsh-theme
source ~/dotfiles/zsh/theme.zsh

