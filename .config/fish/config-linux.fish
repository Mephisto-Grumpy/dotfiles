if test -x /home/linuxbrew/.linuxbrew/bin/brew
  eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
end

if type -q docker-color-output
  alias di "docker images | docker-color-output"
  alias dps "docker ps -a | docker-color-output"
  alias dcps "docker compose ps | docker-color-output"
end

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
  alias lt "exa -l -g --icons --tree"
  alias lta "lt -a"
end


