#!/bin/bash

# From http://misc.flogisoft.com/bash/tip_colors_and_formatting
# with some modifications suggested in the comments.

# This program is free software. It comes without any warranty, to
# the extent permitted by applicable law. You can redistribute it
# and/or modify it under the terms of the Do What The Fuck You Want
# To Public License, Version 2, as published by Sam Hocevar. See
# http://sam.zoy.org/wtfpl/COPYING for more details.

# License :
# http://sam.zoy.org/wtfpl/COPYING
# -> http://www.wtfpl.net/txt/copying/
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
# Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>
# Everyone is permitted to copy and distribute verbatim or modified
# copies of this license document, and changing it is allowed as long
# as the name is changed.
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#

for fgbg in 38 48 ; do #Foreground/Background
for color in {0..255} ; do #Colors
    #Display the color
    echo -en "\e[${fgbg};5;${color}m ${color}\t\e[0m"
    #Display 16 colors per lines
    if [ $((($color + 1) % 16)) == 0 ] ; then
        echo #New line
    fi
done
echo #New line
done

exit 0
