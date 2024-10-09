export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"
export PATH="$PATH:/Users/lion/.dotnet/tools"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

source <(fzf --zsh)

eval "$(starship init zsh)"

export BAT_THEME=tokyonight_storm



alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias cat="bat"
alias ls="eza --icons=always"
alias y="yazi"

alias fzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias fd="cd \$(find . -type d | fzf)"
alias ff="find . -type f | fzf --preview 'bat --style=numbers --color=always --line-range :500 {}' --bind 'enter:become(nvim {})'"

alias zr="zellij run --"
alias za="zellij a"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql@8.4/bin:$PATH"
