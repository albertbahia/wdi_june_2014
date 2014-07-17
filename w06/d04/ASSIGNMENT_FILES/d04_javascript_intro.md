Homework 06-04

#### Learning Objectives
- Practice with closures in Ruby
- Practice utilizing control flow structures and loops in JavaScript
- Practice utilizing JavaScript primitives and collections

# If you have not submitted a blog post do so before beginning your assignment TONIGHT

## Part 1 - Your Namesake

Define a set of methods, similar to how you defined the each method in class, that will perform the following different array methods:

- find_index
- select
- reject
- map

The methods that you defined should perform exactly as the normal ruby counterparts would perform. To make sure that your methods are functional define blocks to test them using the guidelines below.

- select only even numbers from an array
- reject strings longer than two characters
- find the index of the first 'what' in the array of duplicate strings
- map across an array and add 5 to each number

```ruby
numbers = [1,2,3,4,5,6]
strings = ['Hi','my','name','is', 'Bob']
duplicate_strings = ['yo', 'what', 'is', 'up', 'what']
```

## Part 2 - JavaScript!!!

#### Scrabble Word Finder
Given the following arrays:
```javascript
var scrabbleLetterValues = [[],['A','E','I','U','N','R','S','L','O','T'],['G','D'],['C','M','P','B'],['F','H','W','V','Y'],['K'],[],[],['J','X'],[],['Q','Z']];
var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];
```

In a file, `scrabble.js`, write a program that will iterate over an array of strings and calculate the scrabble score for each of the strings. The final output should be an array containing the score value of each of the words. The expected score for 'watermelon' is `15`.

#### Fibonacci Checker
In a file, `fibonacciChecker.js`, write a program that will iterate over an array of numbers and determine whether each of the numbers is a Fibonacci number or not. Your program should print out a string for each number stating whether it is a Fibonacci number. 

__PRO-TIP__: [Fibonacci Number - wikipedia](http://en.wikipedia.org/wiki/Fibonacci_number)


