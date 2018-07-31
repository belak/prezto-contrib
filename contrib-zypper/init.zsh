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
alias zyppi="${_zypper_sudo}${_zypper_frontend} install"                      
# Clean packages cache.
alias zyppl="${_zypper_sudo}${_zypper_frontend} clean"                            
# Displays package information.
alias zypps="${_zypper_frontend} info"                              
# Removes package(s).
alias zyppx="${_zypper_sudo}${_zypper_frontend} remove"                      
# Searches a package.
alias zypps="${_zypper_frontend} search"                            
# Verifies Dependencies.
alias _zyppv="${_zypper_frontend} verify"                          
# Updates package(s).
alias zyppu="${_zypper_sudo}${_zypper_frontend} update"                           
# Remove a repository.
alias zyper="${_zypper_sudo}${_zypper_frontend} refresh"                          
# Dist Upgrade.
alias zypdU="${_zypper_sudo}${_zypper_frontend} dist-upgrade"                          
# Dist Upgrade, download only without install.
alias zypdUd="${_zypper_sudo}${_zypper_frontend} dist-upgrade --download-only"         
# Dist Upgrade without refreshing repositories.
alias zypUpn="${_zypper_sudo}${_zypper_frontend} --no-refresh"                
# Lists patche(s).
alias zyptl="${_zypper_sudo}${_zypper_frontend} list-patches"                
# Applies patch.
alias zypta="${_zypper_sudo}${_zypper_frontend} patch"                
# Applies all patches.
alias zyptA="${_zypper_sudo}${_zypper_frontend} patches"                
# Removes repository.
alias zyper="${_zypper_sudo}${_zypper_frontend} removerepo"
# Adds repository.
alias zypea="${_zypper_sudo}${_zypper_frontend} addrepo"
# Locks package(s).
alias zypl="${_zypper_sudo}${_zypper_frontend} addlock"
# Removes lock on package(s).
alias zyplr="${_zypper_sudo}${_zypper_frontend} removelock"



unset _zypper_{frontend,sudo}
