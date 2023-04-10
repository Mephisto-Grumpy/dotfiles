# Alias
# ---
#
alias k="kubectl"
alias h="helm"
alias tf="terraform"
alias a="ansible"
alias ap="ansible-playbook"
alias dt="datree"

# ALIAS COMMANDS
alias ls='ls --color'
alias ll='ls -l'
alias lla='ls -la'
alias l='ls -CF'

if command -v exa &> /dev/null
then
    alias ls="exa --icons --group-directories-first"
    alias ll="exa --icons --group-directories-first -l"
fi

alias g="git"
alias gt="goto"
alias grep='grep --color'
