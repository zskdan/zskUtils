#!/bin/bash - 
#===============================================================================
#
#          FILE:  mymusic.sh
# 
#         USAGE:  ./mymusic.sh 
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
#       CREATED:  10.02.2010 15:39:26 CET
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

HOMEIP=home
IPStreamer="192.168.1.12"
USER=zakaria
ssh ${USER}@${HOMEIP} -N -f -L ${IPStreamer}:6689:localhost:3689
avahi-publish-address -v -H `hostname`.local -s "MYDAAPServer"  _daap._tcp. 6689

