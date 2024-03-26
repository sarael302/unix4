#!/bin/bash

# Function to count the number of files in the current directory
file_count() {
    ls -l | grep "^-" | wc -l
}

# Main function to run the guessing game
guessing_game() {
    correct_count=$(file_count)

    echo "Welcome to the guessing game!"
    echo "Guess how many files are in the current directory:"
    read guess

    while [[ $guess -ne $correct_count ]]; do
        if [[ $guess -lt $correct_count ]]; then
            echo "Your guess is too low."
        else
            echo "Your guess is too high."
        fi
        echo "Try again:"
        read guess
    done

    echo "Congratulations! You guessed correctly."
}

# Main program
guessing_game
