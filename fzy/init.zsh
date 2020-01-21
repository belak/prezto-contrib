# Source module files
source "${0:h}/external/zsh-fzy.plugin.zsh" || return 1

#
# Key Bindings
#

bindkey '^@d' fzy-cd-widget
bindkey '^@f' fzy-file-widget
bindkey '^@p' fzy-proc-widget
bindkey '^@r' fzy-history-widget
