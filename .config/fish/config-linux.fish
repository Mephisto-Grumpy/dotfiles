if test -x /home/homebrew/bin/brew
  eval (/home/homebrew/bin/brew shellenv)
end

# source $HOME/.cargo/env

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
  alias lt "exa -l -g --icons --tree"
  alias lta "lt -a"
end


