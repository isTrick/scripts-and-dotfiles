# 1. Configurações de Histórico
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory sharehistory incappendhistory

# 2. Configuração das Setas para busca no Histórico (Estilo Fish)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# 3. Inicializa o Prompt
eval "$(starship init zsh)"
