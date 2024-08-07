#!/bin/bash

# --------------------------------------------------------------------------
# Question
# Convert a phrase to its acronym.
#
# Techies love their TLA (Three Letter Acronyms)!
# Help generate some jargon by writing a program that converts a long name like Portable Network Graphics to its acronym (PNG).
#
# Punctuation is handled as follows: hyphens are word separators (like whitespace); all other punctuation can be removed from the input.
#
# Link: https://exercism.org/tracks/bash/exercises/acronym/
# --------------------------------------------------------------------------

make-acronym (){
   local phrase=$1
   local normalized_phrase=${phrase//-/ }
   normalized_phrase=$(echo "$normalized_phrase" | tr -d '[:punct:]')
   acryon=$(echo "$normalized_phrase" | awk '{for(i=1; i<=NF; i++) printf toupper(substr($i,1,1));}')
   echo "$acryon"
}

main (){
    if (( $# != 1 )); then
        echo "Provide the arguments"
        exit 1
    fi
    make-acronym "$@"
}

main "$@"
