# POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# antigen theme bhilburn/powerlevel9k powerlevel9k
# antigen apply

# skip the verification of insecure directories
ZSH_DISABLE_COMPFIX="true"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Proxy
openproxy() {
    export http_proxy=socks5://127.0.0.1:1080
    export https_proxy=$http_proxy
    echo "HTTP proxy on"
}
closeproxy () {
  unset http_proxy
  unset https_proxy
  echo "HTTP Proxy off"
}

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="bullet-train"
ZSH_THEME="robbyrussell"
# zstyle ':prezto:module:prompt' theme 'powerlevel9k'

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
# HISTCONTROL=ignorespace:erasedups:ignoredups

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE


# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git dirhistory macos docker zsh-autosuggestions zsh-z git-open)

# manually config z
# eval "$(lua ~/z.lua --init zsh)"
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Homebrew
alias bi="brew install"
alias bci="brew cask install"
alias bu="brew uninstall"
alias bs="brew search"

# Kubernetes
alias k="kubectl"
alias ko="kubectl get po"
alias ks="kubectl get svc"
alias kn="kubectl get nodes"
alias kg="kubectl get ing"
alias kd="kubectl describe"
alias klog="kubectl logs"
alias kp="kubectl proxy"
alias kc="kubectl create"
alias ka="kubectl apply"
alias kr="kubectl delete"

# Emacs
alias vi="emacsclient -c -a ''"
alias emacsd='emacs --daemon'
alias gop="git-open"

# Visual Studio Code
alias code="code-insiders"

# NPM
alias cnpm="npm --registry=http://registry.npm.taobao.org"
alias npm="npm --registry=https://registry.npmmirror.com"
# alias pnpm="npm --registry=http://47.94.37.100:8081/repository/npm-group/"

if [[ -f ".zshrc.local" ]]; then
  source ~/.zshrc.local
fi

if [[ -f ".zsh.ssh" ]]; then
  source ~/.zsh.ssh
fi

# run emacs daemon
# [[ -z $(ps -C 'emacs --daemon' -o pid=) ]] && emacsd

eval "$(scalaenv init -)"
eval "$(jenv init -)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# direnv: https://github.com/direnv/direnv
eval $(direnv hook bash)
