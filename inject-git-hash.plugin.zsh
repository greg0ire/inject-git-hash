autoload -Uz fzf-git-widget __insert_hash
zle -N fzf-git-widget
bindkey '^X^G' fzf-git-widget
