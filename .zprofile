# my werid aliases
alias cat="ccat --bg=dark"
alias reddy="redis-server /usr/local/etc/redis.conf"
alias vim="nvim"
alias watchtest="clear && fswatch -o test build | xargs -n1 -I{} npm test"
alias mong="mongod --config /usr/local/etc/mongod.conf"
alias rimraf="rm -rf"
alias ag="ag --color-path \"1;34\" --color-line-number \"3;34\""
alias pizza="node ~/pizza/web_client/getStatus.js"
alias maan="man"
alias maaan="man"
alias maaaan="man"
alias maaaaan="man"
alias maaaaaan="man"

# 3rd party functions
eval $(thefuck --alias)
[[ -s `brew --prefix`/etc/profile.d/z.sh ]] && . `brew --prefix`/etc/profile.d/z.sh

# node stuff
export NODE_REPL_HISTORY_FILE="/Users/will/node_repl.log"
export NVM_DIR="/Users/will/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# ruby
source /usr/local/share/chruby/chruby.sh
chruby ruby-2.3

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

# fzf settings
export FZF_DEFAULT_COMMAND='ag -g ""'

# Git
alias g="git status"
alias gc="git commit -a"
alias gp="git push"
alias gpu="git push origin master"
alias gpl="git pull"
alias gpo="git pull origin master"
alias gl='git log --pretty=format:"[%h] %ae, %ar: %s" --stat'
alias gg='git log --pretty=oneline --graph --all'
