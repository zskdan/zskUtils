#!/bin/bash - 
#===============================================================================
#
#          FILE:  mywho.sh
# 
#         USAGE:  ./mywho.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Zakaria ElQotbi (M), zakaria.elqotbi@openwide.fr
#       COMPANY:  OpenWide, Paris
#       VERSION:  1.0
#       CREATED:  11/26/2009 02:53:53 PM CET
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

who | awk  '$5 !~ /\(\:.*\)$/ { if ($1 != /'$USER'/) { if ( $2 !~ /tty/ ) print } };'
