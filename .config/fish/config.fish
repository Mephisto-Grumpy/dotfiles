set fish_greeting ""

set -gx TERM xterm-256color

set -l title (basename (pwd))
set -l title (string replace -r '^/Users/[^/]+/' '~/' $title)
set -l title (string replace -r '^/home/[^/]+/' '~/' $title)

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# Theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# Aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
alias vim nvim
alias d docker
command -qv nvim && alias vim nvim

# OS
switch (uname)
    case Darwin
        source (dirname (status --current-filename))/config-osx.fish
    case Linux
        source (dirname (status --current-filename))/config-linux.fish
    case '*'
        source (dirname (status --current-filename))/config-windows.fish
end

# Cargo
set -gx PATH $HOME/.cargo/bin $PATH

# Node
set -gx PATH node_modules/.bin $PATH

# Pnpm
set -gx PNPM_HOME $HOME/.pnpm-global
set -gx PATH $PNPM_HOME $PATH

# Bun
set -gx PATH $HOME/.bun/bin $PATH

# Python
set -gx PATH $HOME/.local/bin $PATH

# Python 2
set -gx PATH $HOME/.local/bin/python2 $PATH

# Anaconda
set -gx PATH $HOME/.anaconda3/bin $PATH
if test -f $HOME/.anaconda3/bin/conda
    eval $HOME/.anaconda3/bin/conda "shell.fish" hook $argv | source
end

# Modular (Mojo)
set -gx MODULAR_HOME $HOME/.modular
set -gx PATH $MODULAR_HOME/pkg/packages.modular.com_mojo/bin $PATH

# Julia
set -gx PATH $HOME/.julia/julia-1.10.0/bin $PATH
set -gx JULIA_DEPOT_PATH $HOME/.julia

# Go
set -gx GOPATH $HOME/.go

# Haskell
set -gx PATH $HOME/.cabal/bin $PATH
set -gx PATH $HOME/.ghcup/bin $PATH

# Docker
if command -qv docker &>/dev/null && command -qv dockercolorize &>/dev/null
    source (dirname (status --current-filename))/docker.fish
end

# Starship
if command -qv starship &>/dev/null
    eval (starship init fish) | source
end
