autoload -Uz fzf-git-widget __insert_hash
zle -N fzf-git-widget

# Allow user to specify their own keybinding
if [[ -n $FZF_GIT_WIDGET_KEY_BINDING ]]; then
    USER_KEY_BINDING="$FZF_GIT_WIDGET_KEY_BINDING"
else
    USER_KEY_BINDING="^X^G"
fi

bindkey "$USER_KEY_BINDING" fzf-git-widget
