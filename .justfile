default:
  @just --list --unsorted

# Show more information about just
info:
  @echo "OS: {{arch()}} {{os()}}"
  @echo "You're at {{invocation_directory()}}"

alias i := info

# open the just config file in nvim
config:
  @nvim ~/.justfile

alias c := config

# sync dotfiles with Github
sync:
  cp ~/.justfile ~/Desktop/dotfiles/
  cp ~/.zshrc ~/Desktop/dotfiles/

alias s := sync
