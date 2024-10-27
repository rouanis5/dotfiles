# Setup fzf
# ---------
if [[ ! "$PATH" == */home/rouanis5/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/rouanis5/.fzf/bin"
fi

source <(fzf --zsh)
