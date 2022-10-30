#
# Defines todo.txt aliases
#
# Authors:
#   Martin Zeman <martin.zeman@pm.me>
#

# Return if requirements are not found.
if (( ! $+commands[todo.sh] )); then
    return 1
fi

alias todo='todo.sh'

alias tls='todo -c list'
alias tla='todo -c listall'
alias tadd='todo -t add'
alias tato='todo -t addto'
alias trm='todo del'
alias tmv='todo move'
alias tpre='todo prepend'
alias tapp='todo append'
alias tpri='todo pri'
