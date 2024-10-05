#!/bin/bash

# Define the arrays
a=(3 5 8 10 6)
b=(6 5 4 12)
c=(14 7 5 7)

# Initialize an empty array to store common elements
common=()

# Loop through array 'a'
for i in "${a[@]}"; do
    # Check if the element in 'a' exists in both 'b' and 'c'
    if [[ " ${b[@]} " =~ " $i " && " ${c[@]} " =~ " $i " ]]; then
        # If found, add it to the common array
        common+=($i)
    fi
done

# Output the common elements
echo "Common element(s): ${common[@]}"

