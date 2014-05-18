# ----- ALIAS ------

if [ -f ~/dotfiles/bash/aliases ]; then
      . ~/dotfiles/bash/aliases
fi

# ---- BASH COMPLETION (OSX)----

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

