[[ -f ~/.dotfiles/.config/zsh/aliases.zsh ]] && source ~/.dotfiles/.config/zsh/aliases.zsh
[[ -f ~/.dotfiles/.config/zsh/functions.zsh ]] && source ~/.dotfiles/.config/zsh/functions.zsh
[[ -f ~/.dotfiles/.config/zsh/starship.zsh ]] && source ~/.dotfiles/.config/zsh/starship.zsh
[[ -f ~/.dotfiles/.config/zsh/nvm.zsh ]] && source ~/.dotfiles/.config/zsh/nvm.zsh
[[ -f ~/.dotfiles/.config/zsh/wsl2fix.zsh ]] && source ~/.dotfiles/.config/zsh/wsl2fix.zsh
[[ -f ~/.dotfiles/.config/zsh/goto.zsh ]] && source ~/.dotfiles/.config/zsh/goto.zsh
[[ -f ~/.dotfiles/.config/zsh/history.zsh ]] && source ~/.dotfiles/.config/zsh/history.zsh
[[ -f ~/.dotfiles/.config/zsh/env.zsh ]] && source ~/.dotfiles/.config/zsh/env.zsh
# [[ -f ~/.dotfiles/.config/zsh/plugin.zsh ]] && source ~/.dotfiles/.config/zsh/plugin.zsh
[[ -f ~/.zsh_plugins.zsh ]] && source ~/.zsh_plugins.zsh

# Load HomeBrew (Linux)
[[ -d /home/linuxbrew/.linuxbrew ]] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Load HomeBrew (macOS)
[[ -d /usr/local/Homebrew ]] && eval "$(/usr/local/bin/brew shellenv)"

# Load Anaconda
[[ -d ~/.anaconda3 ]] && eval "$(~/.anaconda3/bin/conda shell.zsh hook)"

# Load Starship windows
source <(starship init zsh)

# Load Direnv
eval "$(direnv hook zsh)"
