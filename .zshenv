# Path to your oh-my-zsh installation.

export ZSH=$HOME/.oh-my-zsh

# nodejs
export PATH=$PATH:/usr/local/opt/node@10/bin

# flutter
export PATH=$PATH:/usr/local/flutter/bin
export PATH=$PATH:/usr/local/flutter/bin/cache/dart-sdk/bin

# java
export JAVA_HOME=$HOME/.sdkman/candidates/java/current
export PATH=$PATH:$JAVA_HOME/bin

# scala
export PATH=$PATH:$HOME/.sdkman/candidates/sbt/current/bin
export PATH=$PATH:$HOME/.sdkman/candidates/scala/current/bin

# golang
export GOROOT=/usr/local/Cellar/go/1.13/libexec
export GOPATH=/Users/vritser/go
export PATH=$PATH:$GOPATH/bin
export PATH=/Users/vritser/go/bin:$PATH
export GOPROXY=https://goproxy.io

# homebrew proxy
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles
