# ----------
# prompt colorize & git-prompt setting
# git-completion setting
# ----------
# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# git-completion
#   https://gist.github.com/romansavrulin/41e55fba693b4025ed693559083bc3a0
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
    # if not found in /usr/local/etc, try the brew --prefix location
    [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
        . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
}
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
# brew
export PATH="$PATH:/opt/homebrew/bin/"
eval "$(/opt/homebrew/bin/brew shellenv)"

# my scripts PATH
export PATH=$HOME/mybin:$PATH

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# History
export HISTSIZE=10000
