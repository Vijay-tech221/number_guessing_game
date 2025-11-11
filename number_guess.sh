#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

USERNAME_AVAIL=$($PSQL "SELECT username FROM usernames WHERE username='$USERNAME'")

GAMES_PLAYED=$($PSQL "SELECT count(*) FROM usernames INNER JOIN game_record USING(user_id) WHERE username='$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(guess_attempt) FROM usernames INNER JOIN game_record USING(user_id) WHERE username='$USERNAME'")

if [[ -z $USERNAME_AVAIL ]]
then

    INSERT_USER=$($PSQL "INSERT INTO usernames(username) VALUES('$USERNAME')")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
else
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi


GUESS_COUNT=1
RANDOM_NUMBER=$(( RANDOM % 1000 + 1 ))


echo "Guess the secret number between 1 and 1000:"


while true
do
    read NUM

    # Check if the input is a valid integer
    if [[ ! "$NUM" =~ ^[0-9]+$ ]]
    then
        echo "That is not an integer, guess again:"
    else
        if [[ $NUM -eq $RANDOM_NUMBER ]]
        then
            # Record the number of guesses in the game_record table
            USER_ID=$($PSQL "SELECT user_id FROM usernames WHERE username='$USERNAME'")
            INSERT_GAME_RECORD=$($PSQL "INSERT INTO game_record(user_id, guess_attempt) VALUES($USER_ID, $GUESS_COUNT)")

            # Print success message
            echo "You guessed it in $GUESS_COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
            break
        elif [[ $NUM -gt $RANDOM_NUMBER ]]
        then
            echo "It's lower than that, guess again:"
        elif [[ $NUM -lt $RANDOM_NUMBER ]]
        then
            echo "It's higher than that, guess again:"
        fi
    fi

    GUESS_COUNT=$(( GUESS_COUNT  ))
done
