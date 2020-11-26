# ----------
# prompt colorize & git-prompt setting
# git-completion setting
# ----------
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
# export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
# export PS1='\[\033[32m\]\u@\h\[\033[01m\]:\[\033[34m\]\W\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '

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

# Python alias
alias python="python3"
alias pip="pip3"

# emacs No Window mode
alias enw="emacs -nw"

# ----------
# PATH
# ----------
# PATH of JAVA_HOME
export JAVA_HOME=$(/usr/libexec/java_home)
export SBT_OPTS="-Xms2048m -Xmx2048m -Xss10M -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:ReservedCodeCacheSize=128m -XX:MaxMetaspaceSize=256m"

# Node PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH

# goenv PATH and initialization
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

# HACK: Go PATH
# export GOPATH="${HOME}/go"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

export GO111MODULE=on  # go Module を有効にする
export GOENV_DISABLE_GOPATH=1  # go get した pkg などを $GOPATH/{version}/pkg ではなく $GOPATH/pkg に配置する

# my scripts PATH
export PATH=$HOME/mybin:$PATH
