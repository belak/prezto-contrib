#
# Provides 'kind' aliases and utiities.
#
# Authors:
#   Diego Rabatone Oliveira <diraol@diraol.eng.br>
#

# Return if requirements are not found.
if (( ! ${+commands[kind]} )); then
  return 1
fi

# Enable completion for 'kind'.
cache_file="${0:h}/cache.zsh"
kind_command="${commands[kind]}"

if [[ "${kind_command}" -nt "${cache_file}" || ! -s "${cache_file}" ]]; then
  ${kind_command} completion zsh >! "${cache_file}" 2> /dev/null
fi

source "${cache_file}"
unset cache_file kind_command

#
# Aliases
#

alias kd='kind'

alias kdgc='kind get clusters'
alias kdcc='kind create cluster'
alias kddc='kind delete cluster'
alias kdl='kind load'

# name formatting
zstyle ':prezto:module:contrib-kind' dev-clusters-default 'dev'
