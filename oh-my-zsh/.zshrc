# Path to your oh-my-zsh installation.
export ZSH=/Users/imamulparvez/.oh-my-zsh


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="sorin"

#ZSH_THEME="Honukai"





# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
# Add wisely, as too many plugins slow down shell startup. almostontop
plugins=(git npm node alias-tips auto-fu zsh-autosuggestions almostontop zsh-syntax-highlighting send)
# Plugin list  almostontop
# User configuration
export PATH=$PATH:/usr/local/m-cli

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"


 fpath=(~/.zsh $fpath)






export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"


export ANDROID_HOME=/Users/imamulparvez/Library/Android/sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH



source $ZSH/oh-my-zsh.sh


# .zshrc
# go
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin


export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'


source $(dirname $(gem which colorls))/tab_complete.sh




export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color



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



alias sites="cd /Applications/MAMP/htdocs"

alias godir="cd .go/src/gowork"

alias g="gulp | lolcat"
alias lls="ls | lolcat"

alias elm-init="elm-package install -y"

alias jsc="/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc"



alias mvim="/Applications/MacVim.app/Contents/MacOS/Vim"
#alias emacs="/usr/local/opt/emacs/Emacs.app/Contents/MacOS/Emacs"
#alias emacs="/usr/local/Cellar/emacs/24.x/Emacs.app/Contents/MacOS/Emacs -nw"


alias vim="open -a MacVim.app $1"


#alias ls="ls | lolcat"
# alias gulp="gulp | lolcat"
alias gst="git status | lolcat"
alias pull="git pull | lolcat"

alias elm="elm-repl"

alias gcm="git commit -am "
alias gaa="git add ."
alias zconfig="subl ~/.zshrc"
alias gpp="git push -u origin master | lolcat"


alias cldir="find . -name '*.DS_Store' -type f -delete"


alias mysql="/Applications/MAMP/Library/bin/mysql"


alias webpacknpm="npm install --save-dev webpack babel-core babel-preset-es2015 babel-loader webpack-dev-server"


alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'


alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"


alias an="cd Documents/analog && vim . && gulp"

alias dj="cd Documents/env_stackoverflow && . bin/activate && cd stackoverflow"
alias pmr="python manage.py runserver"
alias pmm="python manage.py migrate"

#alias ls="colorls —light —sort-dirs —report"
alias lc='colorls -lA --sd'


#!/usr/bin/env zsh #adding this to force silly gist highlighting. REMOVE THIS

# ZSH standalone npm install autocompletion. Add this to ~/.zshrc file.
_npm_install_completion() {
	local si=$IFS

	# if 'install' or 'i ' is one of the subcommands, then...
	if [[ ${words} =~ 'install' ]] || [[ ${words} =~ 'i ' ]]; then

		# add the result of `ls ~/.npm` (npm cache) as completion options
		compadd -- $(COMP_CWORD=$((CURRENT-1)) \
			COMP_LINE=$BUFFER \
			COMP_POINT=0 \
			ls ~/.npm -- "${words[@]}" \
			2>/dev/null)
	fi

	IFS=$si
}

compdef _npm_install_completion 'npm'
## END ZSH npm install autocompletion


typeset -AHg FX FG BG

FX=(
    reset     "%{[00m%}"
    bold      "%{[01m%}" no-bold      "%{[22m%}"
    italic    "%{[03m%}" no-italic    "%{[23m%}"
    underline "%{[04m%}" no-underline "%{[24m%}"
    blink     "%{[05m%}" no-blink     "%{[25m%}"
    reverse   "%{[07m%}" no-reverse   "%{[27m%}"
)

for color in {000..255}; do
    FG[$color]="%{[38;5;${color}m%}"
    BG[$color]="%{[48;5;${color}m%}"
done


ZSH_SPECTRUM_TEXT=${ZSH_SPECTRUM_TEXT:-Arma virumque cano Troiae qui primus ab oris}

# Show all 256 colors with color number
function spectrum_ls() {
  for code in {000..255}; do
    print -P -- "$code: %{$FG[$code]%}$ZSH_SPECTRUM_TEXT%{$reset_color%}"
  done
}

# Show all 256 colors where the background is set to specific color
function spectrum_bls() {
  for code in {000..255}; do
    print -P -- "$code: %{$BG[$code]%}$ZSH_SPECTRUM_TEXT%{$reset_color%}"
  done
}


#exec 1> >(lolcat >&2)
#ps aux|grep root|lolcat
#exec > >(lolcat)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=$PATH:/usr/local/m-cli

export PATH="$HOME/.yarn/bin:$PATH"


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship



SPACESHIP_PROMPT_ADD_NEWLINE="true"
SPACESHIP_CHAR_SYMBOL=" \uf0e7"
SPACESHIP_CHAR_PREFIX="\ue796"
SPACESHIP_CHAR_SUFFIX=(" ")
SPACESHIP_CHAR_COLOR_SUCCESS="yellow"
SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER"
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
SPACESHIP_USER_SHOW="true"

SPACESHIP_PACKAGE_SHOW="false"
SPACESHIP_NODE_SHOW="false"
SPACESHIP_ELIXIR_SHOW="false"
SPACESHIP_GOLANG_SHOW="false"
SPACESHIP_PHP_SHOW="false"

[[ -s "/Users/imamulparvez/.gvm/scripts/gvm" ]] && source "/Users/imamulparvez/.gvm/scripts/gvm"
export PATH="/USR/LOCAL/bin:$PATH"


export PATH=$PATH:/sbin

export PATH=~/.local/bin:$PATH

export MAMP_PHP=/Applications/MAMP/bin/php/php7.2.1/bin

export PATH="$MAMP_PHP:$PATH"


PATH=/usr/local/git/bin:$PATH
