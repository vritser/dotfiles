# Path to your oh-my-zsh installation.

export ZSH=$HOME/.oh-my-zsh

# nodejs
export PATH=$PATH:/usr/local/opt/node@10/bin

# flutter
export PATH=$PATH:/usr/local/flutter/bin
export PATH=$PATH:/usr/local/flutter/bin/cache/dart-sdk/bin

# scala
export SBT_HOME=/usr/local/bin
export PATH=$SBT_HOME:$PATH

# golang
export GOROOT=/usr/local/Cellar/go/1.13/libexec
export GOPATH=/Users/vritser/go
export PATH=$PATH:$GOPATH/bin
export PATH=/Users/vritser/go/bin:$PATH
export GOPROXY=https://goproxy.io

# homebrew proxy
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
