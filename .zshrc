# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_BREW_GIT_REMOTE="https://github.com/Homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://github.com/Homebrew/brew.git"
export HOMEBREW_INSTALL_FROM_API=1
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_NO_AUTO_UPDATE=1

# Cargo
. "$HOME/.cargo/env"

# Path additions
export PATH=/Users/yuzhiqiang/.local/bin:$PATH
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/binutils/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/node@22/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH=/Users/yuzhiqiang/.tiup/bin:$PATH

# pnpm
export PNPM_HOME="/Users/yuzhiqiang/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/Users/yuzhiqiang/.bun/_bun" ] && source "/Users/yuzhiqiang/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# deno
. "/Users/yuzhiqiang/.deno/env"

# Zoxide
eval "$(zoxide init zsh)"

# Docker completions
fpath=(/Users/yuzhiqiang/.docker/completions $fpath)

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Aliases
alias cat="bat"
alias ls="eza -alh"
alias cd="z"
alias rm="rm -rf"
alias vim="nvim"
alias jwt="openssl rand -base64 32"
alias find="fd"
alias cp="cp -r"
alias ll='eza -alh --git'
alias la='eza -a'
alias tree='eza --tree'
alias curl='curlie'
alias sm='surrealdb-migrations'
alias msf="/opt/metasploit-framework/bin/msfconsole"
alias quickwit="~/quickwit/quickwit"
alias grafana-run="~/grafana/run"
alias grafana-exit="~/grafana/exit"

# Zsh syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Zsh autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/yuzhiqiang/.lmstudio/bin"
# End of LM Studio CLI section

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
