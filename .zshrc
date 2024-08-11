export PATH="$PATH:$HOME/bin:$HOME/.config/composer/vendor/bin"
# include ./kitty-themes/rose-pine.conf
# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"

# Load and initialise completion system
autoload -Uz compinit
compinit
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases
alias :q="exit"
alias sail="./vendor/bin/sail"

source <(fzf --zsh)
eval "$(zoxide init zsh --cmd cd)"
eval "$(oh-my-posh init zsh --config /home/ger/.config/ohmyposh/zen.toml)"
fastfetch
