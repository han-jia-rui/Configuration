# If you come from bash you might have to change your $PATH.
export PATH="/usr/local/texlive/2023/bin/x86_64-linux:$HOME/hjr/Script:$HOME/bin:$HOME/.local/bin:/usr/lib/ccache:/bin/python:/bin/python3:$PATH"
export PATH=$(echo $PATH | sed 's/:/\n/g' | sort | uniq | tr -s '\n' ':' | sed 's/:$//g')
export MANPATH="/usr/local/texlive/2023/texmf-dist/doc/man:$MANPATH"
export MANPATH=$(echo $MANPATH | sed 's/:/\n/g' | sort | uniq | tr -s '\n' ':' | sed 's/:$//g')
export INFOPATH="/usr/local/texlive/2023/texmf-dist/doc/info:$INFOPATH"
export INFOPATH=$(echo $INFOPATH | sed 's/:/\n/g' | sort | uniq | tr -s '\n' ':' | sed 's/:$//g')

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export HJR=$HOME/hjr

# Env for NJU.
export STUNAME="Han Jiarui"
export STUID="221900156"
export OS_HOME=$HOME/hjr/os2024
export AM_HOME=$OS_HOME/os-workbench/abstract-machine
export TLIB_PATH=$OS_HOME/os-demos/concurrency/thread-lib
# export ISA="riscv32"
# export ICS=$HJR/ics2023
# export NEMU_HOME=$ICS/pa/nemu
# export AM_HOME=$ICS/pa/abstract-machine
# export NVBOARD_HOME=$HJR/Verilog/nvboard
# export ARCH="riscv32-nemu"
# export NAVY_HOME=$ICS/pa/navy-apps
# export NANO_HOME=$ICS/pa/nanos-lite

# set PAGER bash shell variable
export PAGER="less -s -R"

export OBS_VAULT=/home/han/Desktop/hjr/Obsidian

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	tmux
	colored-man-pages
  command-not-found
  history-substring-search
  timer
  zsh-256color
  zsh-interactive-cd
	z
	)
ZSH_TMUX_AUTOSTART=false

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

 source /home/han/.config/broot/launcher/bash/br

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="lsd"
alias vim="nvim"
alias vi="nvim"
alias br="br -i"
alias python="python3"
alias todo="gnome-todo"
alias zshrc="${=EDITOR} ~/.zshrc"
alias zshsrc="source ~/.zshrc"
alias dud="du -d 1 -h | sort -rh"
alias h="history"
alias hg="history | grep"
alias p="ps -f"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(fzf --zsh)"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
