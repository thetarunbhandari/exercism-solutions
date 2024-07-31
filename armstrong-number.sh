#!/bin/bash

check_armstrong (){
    local -i number=$1 sum=0 power=0 digit
    local -i len=${#number} temp=$number
    
    while (( temp > 0 )); do   
        (( digit = temp % 10))
        (( power = digit ** len))
        (( sum += power))
        (( temp /= 10))
    done
    
    if (( sum == number )); then
        echo true
    else
        echo false
    fi
}

check_armstrong "$@"

