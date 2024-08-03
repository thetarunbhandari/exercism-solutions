#!/bin/bash

# --------------------------------------------------------------------------
# Question
# Calculate the Hamming Distance between two DNA strands.
# Your body is made up of cells that contain DNA. Those cells regularly wear out and need replacing, which they achieve by dividing into daughter cells. In fact, the average human body experiences about 10 quadrillion cell divisions in a lifetime!

# When cells divide, their DNA replicates too. Sometimes during this process mistakes happen and single pieces of DNA get encoded with the incorrect information. If we compare two strands of DNA and count the differences between them we can see how many mistakes occurred. This is known as the "Hamming Distance".
# We read DNA using the letters C,A,G and T. Two strands might look like this:

# GAGCCTACTAACGGGAT
# CATCGTAATGACGGCCT
# ^ ^ ^  ^ ^    ^^
# They have 7 differences, and therefore the Hamming Distance is 7.
# The Hamming Distance is useful for lots of things in science, not just biology, so it's a nice phrase to be familiar with :)
#
# Link: https://exercism.org/tracks/bash/exercises/armstrong-numbers/edit
# --------------------------------------------------------------------------

find_hamming_distance() {
    local first_strand=$1 second_strand=$2  
    local -i difference=0 len=$3

    for(( i=0; i<$len; i++ )); do
        if [[ "${first_strand:i:1}" != "${second_strand:i:1}" ]]; then
            difference=$((difference + 1))
        fi
    done

    echo "$difference"
}

find_hamming_distance "$@"

