export DB_USERNAME="root"
export DB_PASSWORD="root"

bindkey \C-R history-incremental-search-backward

export EC2_AMITOOL_HOME=~/ec2/current_ami
export EC2_APITOOL_HOME=~/ec2/current_api
export PATH=$PATH:~/ec2/current_ami/bin:/home/viresh/ec2/current_api/bin:~/Downloads/play-2.0.2/play:/home/viresh/rebar/rebar

#exports
export RAILS_ENV=development
export EDITOR=vim

#tmuxinator setting file
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# alias zshconfig="mate ~/.zshrc"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias rvmuse="rvm use ruby-1.9.3-p194@spaghetti"
alias cdsf="/home/viresh/althea/spaghetti/sf/"
alias console="bundle exec rails console"
alias svr="bundle exec rails server"
alias vi="vim"
alias mysql="mysql -uroot -proot"
alias download_indexer_report="scp ubuntu@ec2-23-22-13-74.compute-1.amazonaws.com:~/indexer_post_mortem ."
alias play="/home/viresh/Downloads/play-2.0.2/play"
alias subl="/home/viresh/Downloads/subl/sublime_text"
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github ruby rails gem)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/home/viresh/.rvm/gems/ruby-1.9.2-p180/bin:/home/viresh/.rvm/gems/ruby-1.9.2-p180/bin/bundle:/home/viresh/.rvm/gems/ruby-1.9.2-p180@global/bin:/home/viresh/.rvm/rubies/ruby-1.9.2-p180/bin:/home/viresh/.rvm/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
