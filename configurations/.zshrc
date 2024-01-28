# CodeWhisperer pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"
# # Zsh/oh-my-posh settings
# eval "$(oh-my-posh init zsh)"
eval "$(oh-my-posh init zsh --config /opt/homebrew/opt/oh-my-posh/themes/marcduiker.omp.json)"

# Aliases
alias vim="nvim"
alias ll='ls -la'
alias disablesleep="sudo pmset -a disablesleep 1"
alias enablesleep="sudo pmset -a disablesleep 0"
alias journal="cd $HOME/workspace/journal && ll"
alias workspace="cd $HOME/workspace && ll"
alias nvim-config="cd $HOME/.config/nvim && ll"
alias backup-dotfiles="cd $HOME/workspace/dotfiles/ && ll"
alias pomodoro="termdown 55m && termdown 5m -s -t Done"
alias rm='echo "This is not the command you are looking for."; false'
alias emacs='emacs -nw'

# Variables
export EDITOR='emacs'
export VISUAL='emacs'
export CLICOLOR=1
export LSCOLORS=gxFxCxDxBxegedabagaced
export JAVA_HOME=$(/usr/libexec/java_home)
export JDTLS_JVM_ARGS="-javaagent:/Users/madhurtoppo/.local/share/nvim/mason/packages/jdtls/lombok.jar"

# Count no.of executions of a command
count-command(){
    history | awk -vcom="$@" '$2==com' | wc -l
}

# Path - .bashrc, .zshrc or whatever shell you use
export PATH=$PATH:$HOME/.local/bin
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
fpath=(path/to/zsh-completions/src $fpath)

# Add path for doom emacs
# export PATH=$PATH:~/.config/emacs/bin
# export PATH="$HOME/.config/emacs/bin:$PATH"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# zsh-autosuggestions
source /Users/madhurtoppo/.config/broot/launcher/bash/br
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# The following lines were added by compinstall (zsh-completions)
zstyle :compinstall filename '/Users/madhurtoppo/.zshrc'
autoload -Uz compinit
compinit

# End of lines added by compinstall (zsh-syntax-highlighting)
source /Users/madhurtoppo/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"
