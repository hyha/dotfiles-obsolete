if command -v tmux>/dev/null; then
  [ -z $TMUX  ] && exec tmux
else
  "tmux not installed!"
fi

echo "Updating Configuration..."
(cd ~/dotfiles && git pull && git submodule update --init --recursive)

printf "source $HOME/dotfiles/zsh/zshrc.sh" > ~/.zshrc
printf "source-file $HOME/dotfiles/tmux/theme.tmuxtheme" >  ~/.tmux.conf
exec zsh

