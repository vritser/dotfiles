# Path to your oh-my-zsh installation.

export ZSH=$HOME/.oh-my-zsh

# nodejs
export PATH=$PATH:/usr/local/opt/node@10/bin

# flutter
export PATH=$PATH:/usr/local/flutter/bin
export PATH=$PATH:/usr/local/flutter/bin/cache/dart-sdk/bin

# java
export PATH=/usr/local/opt/openjdk@11/bin:$PATH
export PATH=$HOME/.jenv/bin:$PATH
# export JAVA_HOME=/usr/libexec/java_home

# scala
export SBT_HOME=/usr/local/bin
export PATH=$SBT_HOME:$PATH
export PATH=$HOME/.scalaenv/shims:$PATH

# golang
export GOROOT=/usr/local/Cellar/go/1.13/libexec
export GOPATH=/Users/vritser/go
export PATH=$PATH:$GOPATH/bin
export PATH=/Users/vritser/go/bin:$PATH
export GOPROXY=https://goproxy.io

# homebrew proxy
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles
