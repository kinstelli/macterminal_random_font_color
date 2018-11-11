#!/bin/bash

# $RANDOM generates a number between 0 and 32767
# color range can be anywhere from 0 to 65535

# pick some colors
RAND_COLOR1=$(( 10000 + RANDOM % 65535 ))
RAND_COLOR2=$(( 10000 + RANDOM % 65535 ))
RAND_COLOR3=$(( 10000 + RANDOM % 65535 ))
COLORARRAY=($RAND_COLOR1 $RAND_COLOR2 $RAND_COLOR3)

# balance it so that at least one is bright enough to read
BRIGHTENITEM=$((RANDOM % 3))
# then just overwrite one of our original random nums so it's brighter than 32766
COLORARRAY[$BRIGHTENITEM]=$(( RANDOM + 32766  ))

RGB_FONT_COMBO="{ ${COLORARRAY[0]} ,${COLORARRAY[1]}, ${COLORARRAY[2]} }";

## Set the font color
OSACMD="tell front window of app \"Terminal\" to set normal text color to $RGB_FONT_COMBO"
osascript -e "$OSACMD"
