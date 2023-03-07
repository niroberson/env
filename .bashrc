# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

#-------------------------------------------------------------
# Git Alias Commands
#-------------------------------------------------------------
alias gs="git status"
alias gf="git fetch -p"
alias ga="git add"
alias gaa="git add ."
alias gau="git add -u"
alias gc="git commit -m"
alias gca="git commit -am"
alias gb="git branch"
alias gbd="git branch -d"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gt="git stash"
alias gta="git stash apply"
alias gm="git merge"
alias gr="git rebase"
alias gl="git log --oneline --decorate --graph"
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias glga="git log --graph --oneline --all --decorate"
alias gb="git branch"
alias gsh="git show"
alias gd="diff --color --color-words --abbrev"
alias gdc="git diff --cached"
alias gbl="git blame"
alias gps="git push"
alias gpl="git pull"
alias gb="git branch"
alias gc="git commit"
alias gd="git diff"
alias go="git checkout "
alias gk="gitk --all&"
alias gx="gitx --all"

# show ignored files by git
alias gx="ign = ls-files -o -i --exclude-standard"

# Untrack Files without deleting them
alias grmc="git rm -r --cached"

#---------------------------------------------------------
# Personal Aliases
#---------------------------------------------------------
alias src="cd /nr/src"

_GREEN=$(tput setaf 2)
_BLUE=$(tput setaf 4)
_RED=$(tput setaf 1)
_MAGENTA=$(tput setaf 5)
_CYAN=$(tput setaf 6)
_RESET=$(tput sgr0)
_BOLD=$(tput bold)

export PS1="${_CYAN}\A ${_MAGENTA}\W: \e[m"
