#
# Integrates b4b4r07/enhancd into Prezto.
#
# Authors:
#   Martin Zeman <martin.zeman@pm.me>
#

# Specified list of one or more visual filters.
zstyle -s ":prezto:module:enhancd" filter "ENHANCD_FILTER"

# Change the command name of enhancd
zstyle -s ":prezto:module:enhancd" command "ENHANCD_COMMAND"

# Set whether to show the full path or not when executing `..`
zstyle -s ":prezto:module:enhancd" show-fullpath "ENHANCD_DOT_SHOW_FULLPATH"

# Source module files.
source "${0:h}/external/init.sh" || return 1
