# Wordle-bash-cheater

## Usage

Put the function in your (bash|zsh)rc file or create a new script and put the script in your $PATH location.

To use the function, use `wordle (letters you've guessed correctly) -n (letters you know aren't in the word)`. For example, if I know that a appears as the third letter in the word, and c, r, n and e don't appear in the word, then the command would be `wordle ..a.. -n crne` since wordle words are 5 letters.

This is just for fun, it doesn't involve any specific AI to figure out the next best word, merely lists all the possible words following the specification.
