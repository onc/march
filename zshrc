# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="false"

REPORTTIME=10

# plugins
plugins=(man colored-man-pages colorize themes cp zsh-syntax-highlighting) 

# Disable repeating command before result of command
DISABLE_AUTO_TITLE="true"

source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

export CLICOLOR=1

function use_clang() {
    export CC="clang"
    export CXX="clang++"
}

function use_gcc() {
    export CC="gcc"
    export CXX="g++"
}
