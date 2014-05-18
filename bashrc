# ----- ALIAS ------

if [ -f ~/dotfiles/bash/aliases ]; then
      . ~/dotfiles/bash/aliases
fi

# ---- BASH COMPLETION (OSX)----

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# ----- COLORS ------

if [ -f ~/dotfiles/bash/colors ]; then
      . ~/dotfiles/bash/colors
fi

# ----- PROMPT ------

if [ -f ~/dotfiles/bash/prompt ]; then
      . ~/dotfiles/bash/prompt
fi


