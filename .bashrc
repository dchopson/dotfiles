# Aliases

## General
alias grepp="grep -nr --color"
alias lal="ls -alG"
alias la="ls -aG"
alias l="ls -G"
alias ls="ls -G"
alias dut="du -ch | grep total"
alias reload=". ~/.bash_profile"
alias config="vim ~/.bashrc"
alias config-vim="vim ~/.vimrc"
alias clear="reload && clear"

## Git
alias g="git"
alias git="hub"
alias gs="git status -s --untracked-files=all"
alias gr="g r"

## Rails
alias be="bundle exec"
alias rc="bundle exec rails c"
alias rg="bundle exec rails g"
alias rs="bundle exec rails s thin"
alias rdb="bundle exec rails db"
alias bi="bundle install"
alias bo="bundle open"
alias bu="bundle update"
alias jcf="bundle exec rake sop_ui:jasmine_compile[force]"
alias jse="bundle exec rake i18n:js:export"
alias dj="bundle exec rake jobs:work"
alias dbd="bundle exec rake db:drop"
alias dbdt="bundle exec rake db:drop RAILS_ENV=test"
alias dbc="bundle exec rake db:create"
alias dbct="bundle exec rake db:create RAILS_ENV=test"
alias dbs="bundle exec rake db:setup"
alias dbst="bundle exec rake db:setup RAILS_ENV=test"
alias dbm="bundle exec rake db:migrate"
alias dbmt="bundle exec rake db:migrate RAILS_ENV=test"

## Sage
alias ms1="bundle exec rails s"
alias s1="bundle exec rails s -p 3030"
alias s1b="bundle exec rails s -p 3040"
alias ms1_ca="bundle exec rails s -p 3001"
alias s1_ca="bundle exec rails s -p 3031"
alias s1b_ca="bundle exec rails s -p 3041"
alias s1adv="bundle exec thin start -p 3032 --threaded"
alias s1add="bundle exec thin start -p 3050 --threaded"
alias prepare="cd ..; ./ci/prepare_host_app.sh; cd host_app"

# Bash history
export HISTFILESIZE=100000
export HISTSIZE=100000
shopt -s histappend
export PROMPT_COMMAND='history -a'

#The command line prompt.
case "$TERM" in
  xterm) color_prompt=yes;;
  xterm-color) color_prompt=yes;;
  xterm-256color) color_prompt=yes;;
esac
if [ "$color_prompt" = yes ]; then
  #export PS1='\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\n\[\033[00m\]\$ ' #No date
  export PS1="\[\033[01;32m\][\$(date +%Y%m%d_%H%M%S)] \u@\h\[\033[00m\]:\[\033[01;34m\]\w\n\[\033[00m\]\$ "
else
  export PS1='\h:\w\n\$ ' #No date
  #export PS1="[\$(date +%Y%m%d_%H%M%S)] \u@\h:\w\n\$ "
fi

# Git autocompletion
source ~/.git-completion.bash
complete -F complete -o bashdefault -o default -o nospace -F __git_wrap__git_main git g

# MySQL
export MYSQL_USERNAME=root
export MYSQL_PASSWORD=

# rbenv
# export PATH="$HOME/.rbenv/bin:$PATH" # Linux-only
eval "$(rbenv init -)"

# Mac
#export CC=/usr/local/bin/gcc-4.9
export CC=/usr/bin/gcc
#export CXX=/usr/local/bin/g++-4.9
