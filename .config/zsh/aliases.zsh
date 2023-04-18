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
alias ls="exa --icons --group-directories-first"
alias ll="exa --icons --group-directories-first -l"
alias lla='ls -la'
alias l='ls -CF'

alias python="python3"
alias pip="pip3"
alias vim="nvim"
alias g="git"
alias gt="goto"
alias grep='grep --color'

# ALIAS XDG
[[ -n $WSL_DISTRO_NAME ]] && alias open="xdg-open"