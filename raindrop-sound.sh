#!/bin/bash

# --------------------------------------------------------------------------
# Question
# Your task is to convert a number into its corresponding raindrop sounds.

# If a given number:
#    is divisible by 3, add "Pling" to the result.
#    is divisible by 5, add "Plang" to the result.
#    is divisible by 7, add "Plong" to the result.
#    is not divisible by 3, 5, or 7, the result should be the number as a string.
#
# Link: https://exercism.org/tracks/bash/exercises/raindrops
# --------------------------------------------------------------------------


make_sound() {
    local -i number=$1
    local sound=""
    
    if ((number % 3 == 0)); then
        sound+="Pling"
    fi
    
    if ((number % 5 == 0)); then
        sound+="Plang"
    fi
    
    if ((number % 7 == 0)); then
        sound+="Plong"
    fi

    if [[ -z $sound ]]; then
        sound="$number"
        echo $sound
        exit
    else
        echo $sound
        exit
    fi  
}

make_sound "$@"
