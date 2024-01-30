# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.pre.bash"
eval "$(/opt/homebrew/bin/brew shellenv)"

# ----------
# prompt colorize & git-prompt setting
# git-completion setting
# ----------
# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

source /opt/homebrew/etc/bash_completion.d/git-prompt.sh
source /opt/homebrew/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

# prompt
# export PS1='\[\033[32m\]\u@\h\[\033[01m\]:\[\033[34m\]\W\[\033[31m\]$(__git_ps1)\[\033[00m\] \$ '
export PS1='\[\033[32m\]\u@\h\[\033[01m\]:\[\033[34m\]\W\[\033[31m\]$(__git_ps1)\[\033[00m\]\n'

exitstatus() {
	if [[ $? == 0 ]]; then
		echo "(*'-') < "
	else
		echo "(;x_x) < "
	fi
}
export PS1=$PS1'$(exitstatus)'


# ----------
# alias
# ----------
# some more ls aliases
alias ls='ls -G'  # -G: color 表示
export LSCOLORS=Exfxcxdxbxegedabagacad  # ls 時の色設定
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# less tab-size 4
alias less='less -x4'

# screen (use brew installed screen)
# alias screen='screen-4.8.0'

# alias confirm
alias rmi='rm -i'
alias cpi='cp -i'
alias mvi='mv -i'

# alias git shortcut
alias g="git"
alias gs="git branch;git status"

# Linux like grep colorize
export GREP_OPTIONS='--color=auto'

# emacs No Window mode
alias enw="emacs -nw"

# ----------
# PATH
# ----------
# asdf
. $HOME/.asdf/asdf.sh

# PATH of JAVA_HOME
# export JAVA_HOME=$(/usr/libexec/java_home)
# [asdf] To set JAVA_HOME in your shell's initialization add the following:
. ~/.asdf/plugins/java/set-java-home.bash

# sbt option
export SBT_OPTS="-Xms2048m -Xmx4096m -Xss10M -XX:ReservedCodeCacheSize=128m -XX:MaxMetaspaceSize=512m"

# Node PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH

# goenv PATH and initialization
# HACK: Go PATH
export GOPATH="$HOME/go"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
export GO111MODULE=on  # go Module を有効にする

# [kubectl] /usr/local/bin/kubectl -> asdf
# alias kubectl="/Users/cw-daichi.suzuki/.asdf/shims/kubectl"

# MySQL
export PATH="/usr/local/opt/mysql-client@5.7/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# my scripts PATH
export PATH=$HOME/mybin:$PATH

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Haskell -- ghcup
export PATH="$HOME/.ghcup/bin:$PATH"

# History
export HISTSIZE=10000

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bashrc.post.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.post.bash"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
. "$HOME/.cargo/env"
