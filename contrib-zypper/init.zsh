#
# Defines zypper aliases.
#
# Authors:
#   Simon <contact@saimon.org>
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Andrea Ceccarelli <gltch2003@gmail.com>
#

# Return if requirements are not found.
if (( ! $+commands[zypper] )); then
  return 1
fi

# Get the Zypper frontend.
zstyle -s ':prezto:module:zypper' frontend '_zypper_frontend'

if (( $+commands[$_zypper_frontend] )); then
  alias zypper="$_zypper_frontend"
else
  _zypper_frontend='zypper'
  _zypper_sudo='sudo '
fi

#
# Aliases
#

# Zypper.
alias zyp="${_zypper_frontend}"
# Cleans the cache.
alias zypc="${_zypper_frontend} clean -a"                     
# Installs package(s).
alias zypi="${_zypper_sudo}${_zypper_frontend} install"                      
# Clean packages cache.
alias zypl="${_zypper_sudo}${_zypper_frontend} clean"                            
# Displays package information.
alias zypq="${_zypper_frontend} info"                              
# Removes package(s).
alias zypx="${_zypper_sudo}${_zypper_frontend} remove"                      
# Searches a package.
alias zyps="${_zypper_frontend} search"                            
# Verifies Dependencies.
alias zypv="${_zypper_frontend} verify"                          
# Updates package(s).
alias zypu="${_zypper_sudo}${_zypper_frontend} update"                           
# Refresh repositories.
alias zypre="${_zypper_sudo}${_zypper_frontend} refresh"                          
# Dist Upgrade.
alias zypU="${_zypper_sudo}${_zypper_frontend} dist-upgrade"                          
# Dist Upgrade, download only without install.
alias zypUd="${_zypper_sudo}${_zypper_frontend} dist-upgrade --download-only"         
# Dist Upgrade without refreshing repositories.
alias zypUn="${_zypper_sudo}${_zypper_frontend} --no-refresh"                
# Lists patche(s).
alias zyplp="${_zypper_sudo}${_zypper_frontend} list-patches"                
# Applies patch.
alias zypap="${_zypper_sudo}${_zypper_frontend} patch"                
# Applies all patches.
alias zypaP="${_zypper_sudo}${_zypper_frontend} patches"                
# Removes repository.
alias zypR="${_zypper_sudo}${_zypper_frontend} removerepo"
# Adds repository.
alias zypar="${_zypper_sudo}${_zypper_frontend} addrepo"
# Locks package(s).
alias zypal="${_zypper_sudo}${_zypper_frontend} addlock"
# Removes lock on package(s).
alias zyprl="${_zypper_sudo}${_zypper_frontend} removelock"



unset _zypper_{frontend,sudo}
