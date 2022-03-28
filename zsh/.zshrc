# If you come from bash you might have to change your $PATH.
export PATH="./bin:$PATH"
export PATH=.:$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS
export PATH=$PATH:/Users/Michal/.dotfiles/scripts

# Path to your oh-my-zsh installation.
export ZSH=/Users/michal/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="wezm"
ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(
  git
  docker-compose
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias shut='shutdown -t 0'
alias cde='cd ~/Code/Personal/elma'
alias cdsg='cd ~/Code/u2i/socialguide'
alias cdi='cd ~/Code/u2i/icarus'
alias cdw='cd ~/Code/u2i/ns-web'
alias cdhe='cd ~/Code/u2i/hermes'
alias cdhy='cd ~/Code/u2i/hydra'
alias cdc='cd ~/Code/u2i/chimera'
alias cdcr='cd ~/Code/u2i/ns-chef-repo'
alias cdt='cd ~/Code/u2i/ns-terraform'
alias gcb='git rev-parse --abbrev-ref HEAD'
alias gcan='git commit --amend --no-edit'
gitimdone(){ ; branch=$(git rev-parse --abbrev-ref  HEAD); git co master; git branch -D $branch; git pull; }

alias l='ls -la'

export HISTSIZE=5000000
export HISTFILESIZE=5000000

eval "$(rbenv init -)"
prompt_context(){}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export HUSKY_SKIP_INSTALL=1
export HUSKY_SKIP_HOOKS=1

export GITHUB_ACCESS_TOKEN=65d4d31fc9e455df9b93b80f3a41342c43ead552

# this enables VI mode in ZSH
#bindkey -v
#bindkey "^R" history-incremental-search-backward

eval $(thefuck --alias)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
