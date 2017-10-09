#!/bin/bash

# Set filters
whitespace_filters=-whitespace/tab,-whitespace/braces,-whitespace/newline
legal_filters=-legal/copyright
filters="$whitespace_filters,$legal_filters"

# Set directory to check
directory=$1
if [ -z $directory ]
then
	directory="."
fi

# Select files to check and ignore files auto-generated by cmake
files=$(find $directory/ \
-not \( -path "$directory/build/*" -o -path "$directory/external/*" \) \
\( -name "*.cpp" -o -name "*.h" \) \
)

script_path=$(dirname "$0")

python $script_path/cpplint/cpplint.py --filter=$filters $files
