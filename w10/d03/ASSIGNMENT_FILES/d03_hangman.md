Homework 10-03

#### Learning Objectives
- Practice creating a Rails app
- Practice using AJAX with Rails
- Practice encapsulating related JS code in objects
- Practice using Handlebars Templates

# Hangman
Tonight you will build hangman in JavaScript

## Part 1
Set up your Rails app.

## Part 2 - JavaScripts

Define an object literal, `game`. The object should have AT LEAST the following properties:

- initialize
  - this property should be a function that when called will create a new game. It should fetch a new word from the database for the current game
- render
  - this property should be a function that will render the Handlebars template for the current game and append it to the dom.
- fetchWord
  - this property should be a function that will contain an AJAX request
  - the AJAX request should retrieve a single word from the database and store it to be used for that current game
  - it should call the render function at the end of a successful AJAX request.
- template
  - this property should be the compiled template function returned from the 'HandlebarsTemplates' object
  - this template will be used to render the gameboard with all of the necessary information.
- board
  - this property should be an object with the following properties:
   - the current word (the answer, an array)
   - all guessed letters (an array)
   - the number of guesses left (starting at 8)
   - the correctly guessed letters (an array)
    - if the answer is `ruby` and a user has guessed `b`, then correctly guessed letters should be the following array: `['','','b','']`

__NOTE__: You may need to use bind if you are having issues with scope.

Your template should display all of the board information (except the answer).
Here is a starter template that I used, your solution may be different and the template may need to be altered: 

```html
// in an .hbs file

<div id="container">
  <div id="all-guesses">
    <p>Letters Guessed: </p><p>{{guessed}}</p>
    <div id='remaining'><p>Guesses Remaining: {{guessesLeft}}</p></div>
  </div>
  <div id='inputs'>
    <input id="guessed-letter" type="text" name='guessedLetter'>
    <button id='guess'>Guess</button>
    <button id='giveup'>Give Up</button>
  </div>

  <div id='correct-guesses'>
    <p>
    {{#each correct}}
      {{#if this}}
        <span class="letter">{{this}}</span>
      {{else}}
        <span class="letter">_</span>
      {{/if}}
    {{/each}}
    </p>
  </div>
</div>
```

## User Stories
 - As a user I want to be able to submit a single letter as a guess, so that I can play the game.
 - As a user I want the current displayed word to update after I submit a guess, so I know whether I was correct or not.
 - As a user I want to see a list of all guessed letters, so that I can keep track of incorrect guesses
 - As a user I want to see a count of remaining guesses, so that I know how many more chances I have to guess
 - As a user if I lose I want the word to be alerted, so that I know what the answer was.
 - As a user I want to be able to give up, so that I can see the answer and start a new game.
 - As a user I want a guess to only count once, so that if I make a mistake it doesn't count against me.

#### Bonus
 - As a user I want to be able to have typed letters registered as guesses, so I don't have to click a submit button.
