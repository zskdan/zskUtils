#!/bin/bash - 
#===============================================================================
#
#          FILE:  xtermTitle.sh
# 
#         USAGE:  ./xtermTitle.sh 
# 
#   DESCRIPTION:  change the current xterm title as an application for 
#                 the xterm howto http://www.faqs.org/docs/Linux-mini/Xterm-Title.html
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Zakaria ElQotbi (M), zakaria.elqotbi@openwide.fr
#       COMPANY:  OpenWide, Paris
#       VERSION:  1.0
#       CREATED:  10.02.2010 15:58:17 CET
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

[ -n "$1" -a "$TERM" = "xterm" ] && echo -e "\033]0;$1\007" 
[ "$?" -eq 0 ] && echo "xterm title setted to $1"


