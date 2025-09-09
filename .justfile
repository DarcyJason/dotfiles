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
  @cp ~/.justfile ~/Desktop/dotfiles/
  @cp ~/.zshrc ~/Desktop/dotfiles/
  @cp -r ~/.config/nvim/ ~/Desktop/dotfiles/.config/nvim/

alias s := sync

# Start surrealdb
start-surreal:
  @-surreal start --bind 127.0.0.1:10086 rocksdb://~/surrealdb

alias ss := start-surreal

# Cargo fmt
rsfmt:
  @cargo fmt --all

alias rf := rsfmt

# Git remote url set up
git-remote address:
  @git remote add origin "{{address}}"

alias gr := git-remote
