# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"

# Aliases
alias vim="nvim"
alias ll='ls -la'
alias disablesleep="sudo pmset -a disablesleep 1"
alias enablesleep="sudo pmset -a disablesleep 0"
alias dotfiles="cd $HOME/dotfiles"
alias nvim-config="cd $HOME/.config/nvim"
alias workspace="cd $HOME/workspace"
alias journal="cd $HOME/workspace/journal"
alias backup-dotfiles="cd $HOME/workspace/dotfiles"
alias pomodoro="termdown 55m && termdown 5m -s -t Done"
alias rm='echo "This is not the command you are looking for."; false'
alias emacs='emacs -nw'
alias gr='cd $(git rev-parse --show-toplevel)'
alias glo='git log --oneline'
alias python='python3'
alias b="calm-garden-cli"
alias c='clear'
alias l='lazygit'
alias n='nvim .'
alias t='tmux'
alias t-dev='sh ~/.config/tmux/scripts/dev-session.sh'
alias y='yazi'

# Environment Variables
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export EDITOR='nvim'
export VISUAL='nvim'
export CLICOLOR=1
export LSCOLORS=gxFxCxDxBxegedabagaced
export JAVA_HOME=$(/usr/libexec/java_home -v 21)
export PATH=$JAVA_HOME/bin:$PATH
export JDTLS_JVM_ARGS="-javaagent:$HOME/.local/share/nvim/mason/packages/jdtls/lombok.jar"

# Path - .bashrc, .zshrc or whatever shell you use
export PATH=$PATH:$HOME/.local/bin
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
fpath=(path/to/zsh-completions/src $fpath)

# Print the current directory in the terminal title
precmd() { print -Pn "\e]0;%~\a" }

# Count no.of executions of a command
count-command(){
    history | awk -vcom="$@" '$2==com' | wc -l
}

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# zsh-secrets
source $HOME/.zsh-secrets

# zsh-autosuggestions
source $HOME/.config/broot/launcher/bash/br
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-completions
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit
compinit

# zsh-syntax-highlighting
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Starship prompt
eval "$(starship init zsh)"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
