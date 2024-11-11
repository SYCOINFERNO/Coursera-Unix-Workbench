#!/bin/bash

# Function to count files and handle guessing
guessing_game() {
    local file_count=$(ls -1 | wc -l)
    local guess=-1

    echo "Guess how many files are in the current directory:"

    while [[ $guess -ne $file_count ]]; do
        read guess
        if [[ $guess -lt $file_count ]]; then
            echo "Too low! Try again:"
        elif [[ $guess -gt $file_count ]]; then
            echo "Too high! Try again:"
        else
            echo "Congratulations! You guessed the correct number of files!"
        fi
    done
}

# Start the game
guessing_game
