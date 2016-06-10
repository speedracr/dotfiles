# Path to your oh-my-zsh installation.
export ZSH=/home/jonas/.oh-my-zsh
export PATH="$HOME/bin:$PATH"

# Re-add to use uru_rt for Ruby versioning
# Install uru_rt into /bin/
# export PATH="$HOME/bin/uru-rt:$PATH"
# eval "$(uru_rt admin install)"

# Dirty hack: Set xterm-256colors for guake here, as guake config doesn't bite
export TERM='xterm-256color'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
DEFAULT_USER=`whoami`

#export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/jonas/.rvm/bin:/home/jonas/.rvm/bin"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias v='vim'
alias dcrws='docker-compose -f docker-compose-jonas.yml run --rm web-jonas rvm-shell'
alias dcr='docker-compose -f docker-compose.yml run --rm web rvm-shell'
alias dcr2='docker-compose run --rm web rvm-shell'
alias partyhard='docker-compose run --rm web rvm-shell'
alias dup='docker-compose -f docker-compose-jonas.yml up'
alias djup='docker-compose -f docker-compose.yml up'
alias gco='git checkout'
alias gst='git status'
alias g='git status'
alias gc='git commit -m'
alias gcu='git commit -m "Update."'
alias gaa='git add -A'
alias ga='git add'
alias gp='git pull'
alias gpp='git push'
alias gpu='git push -u origin'
alias hm='git push heroku master'
alias gm='git merge'
alias gb='git branch'
alias gbd='git branch -D '
alias gcom='git checkout master'
alias gmm='git merge master'
alias cd..='cd ..'
alias cdd='cd ~'
alias rs='bin/rails s -b 0.0.0.0'
alias rc='bin/rails c'
alias dbm='bundle exec rake db:migrate'
alias bi='bundle install --path vendor/bundle'
alias cdgp='cd ~/Documents/gapfish'
alias cdjc='cd ~/Documents/jcode'
alias cdbo='cd ~/Documents/boost'
alias cdap='cd ~/Documents/api_app'
alias cdgd='cd ~/Documents/gapfish-data'
alias ll='ls -lh'
alias l1='ls -1'
alias s='source'
alias banzai='git add . && git commit -m "Update" && git push'
alias au='sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove'
alias agu='sudo apt-get upgrade'
alias scrt='bundle exec rake secret | xclip -sel clip'
alias b='bundle exec'
alias ms='bundle exec middleman server'
alias mb='bundle exec middleman build'

# Add rbenv to PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
