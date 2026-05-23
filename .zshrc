# This config is meant to be used with linuxbrew

# Load Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# 1. Definições de Autocompletar (Deve vir antes do compinit)
fpath=($(brew --prefix)/share/zsh-completions $fpath)

# Inicializa o sistema de completions do Zsh
autoload -U compinit && compinit

# 2. Configurações de Histórico
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory sharehistory incappendhistory

# 3. Carregando os Plugins do Homebrew
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# 4. Carregando o fzf-tab (Gerenciado pelo Brew)
source $(brew --prefix)/share/fzf-tab/fzf-tab.zsh

# 5. Configuração das Setas para busca no Histórico (Estilo Fish)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# 6. Inicializa o Prompt
eval "$(starship init zsh)"