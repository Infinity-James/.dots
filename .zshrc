# load pure stuff
fpath=( "$HOME/.zfunctions" $fpath )
autoload -U promptinit && promptinit
prompt pure

# better completion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# shared history between all zsh instances
HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=10000
setopt sharehistory
setopt extendedhistory

# auto cd
#setopt auto_cd

# general
export EDITOR=vim
export KEYTIMEOUT=1
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# zsh history (load before highlighting)
source "$HOME/.dots/zsh-history-substring-search/zsh-history-substring-search.zsh"
zmodload zsh/terminfo
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# styling
export LS_COLORS='fi=00:di=00;34:ln=00;36:ex=00;91:';
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# aliases
alias ls='ls -F --color=auto'
alias reddy="redis-server /usr/local/etc/redis.conf"
alias watchtest="clear && fswatch -o test build | xargs -n1 -I{} npm test"
alias mong="mongod --config /usr/local/etc/mongod.conf"
alias glog="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

# james aliases
alias m2u="tr '\015' '\012' "
alias u2m="tr '\012' '\015' "
alias ls="ls -F"
alias mysql="/Applications/XAMPP/xamppfiles/bin/mysql"
alias jenkins="nohup java -jar Developer/Tools/jenkins.war --httpPort=8081 ajp13Port=8010 > /tmp/jenkins.log 2>&1"
alias gfm="git checkout master; git pull; git submodule update;"
alias gdb='git branch | grep -v "master" | xargs git branch -D'
alias ghr='git reset --hard HEAD'
alias gsu='git submodule update --init --recursive'
alias gpull='git pull'
alias gpush='git push'
alias ddd='rm -rf ~/Library/Developer/Xcode/DerivedData/'
alias resetsims='xcrun simctl list devices | grep -v "^[-=]" | cut -d "(" -f2 | cut -d ")" -f1 | xargs -I {} xcrun simctl erase "{}"'
alias greset='git reset --hard HEAD'
alias gresetmaster='git fetch origin; git reset --hard origin/master'
alias gsta='git status'
alias showdots='defaults write com.apple.Finder AppleShowAllFiles'
alias killfinder='killall -KILL Finder'
alias emptytrash='sudo rm -rf ~/.Trash; sudo rm -rf /Volumes/*/.Trashes'
alias reloadprofile='. ~/.zshrc'

# tmux
PS=1"$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# my functions
mkky () {
  if [ ! -z "$1" ]
  then
      mkdir "$1" && cd "$1"
  fi
}

watchy () {
  fswatch -0 $1 | xargs -0 -n 1 -I {} $2 {}
}

# 3rd party functions
eval $(thefuck --alias)
[[ -s `brew --prefix`/etc/profile.d/z.sh ]] && . `brew --prefix`/etc/profile.d/z.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
