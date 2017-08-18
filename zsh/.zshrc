source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

source ~/.zsh/powerlevel9k_theme.zsh
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

zplug "arzzen/calc.plugin.zsh"
zplug "supercrabtree/k"
zplug "b4b4r07/enhancd", use:init.sh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug "lib/completion", from:oh-my-zsh
zplug "lib/grep", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "lib/theme-and-appearance", from:oh-my-zsh

zplug "~/go/src/github.com/junegunn/fzf", from:local, as:command

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load

if zplug check b4b4r07/enhancd; then
    export ENHANCD_FILTER=fzf
    export ENHANCD_DISABLE_DOT=1
fi

# Disable builtin command r (repeat last cmd)
disable r

alias py="python"
alias du="du -sh"

alias l='ls -CF'
alias ll='ls -ClhF'
alias la='ls -CaF'
alias lla='ls -CalhF'
alias l.='ls -CAF --ignore=\*'
alias ll.='ls -CAlhF --ignore=\*'
