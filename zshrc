# Set Variables
# Homebrew options
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Change ZSH Options
export ZSH="$HOME/.oh-my-zsh"
export NULLCMD=bat

# Use powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL10K_SHORTEN_DIR_LENGTH=2

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Use ZSH Plugins
plugins=(
  git 
  alias-finder 
  common-aliases 
  copyfile 
  docker 
  dotenv 
  extract 
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
  web-search
)

source $ZSH/oh-my-zsh.sh

# NVM options
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Add Locations to $PATH Variable
# Add Visual Studio Code (code)
# export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
typeset -U path

path=(
  $path
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)


# Add Jenv
# export PATH="$PATH:$HOME/.jenv/bin"
# eval "$(jenv init -)"

# Adding neofetch
neofetch

# Fuzzy Search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#Twitter API
export TWITTER_BEARER_TOKEN=AAAAAAAAAAAAAAAAAAAAAL5RlgEAAAAAMuSFq714b75uXpfqkMHbDp2%2BcdU%3Dm7cF6MKRDoexp70Q0v1pdmaavonjKJVZbTuv6pujaF6xrWCkWW

# Write Handy Functions
function mkcd() {
	mkdir -p "$@" && cd "$_"
}

function exists() {
  command -v $1 >/dev/null 2>&1
}

# Create Aliases
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias man='batman'
alias cat='bat'
#alias grep='batgrep'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias rm='trash'
