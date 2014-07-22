Lab 06-05

# Learning Objectives
- Gain comfortability coding in a new language
- Practice working with arrays in JavaScript
- Practice defining functions in Javascript
- Practice passing functions stored in variables

To get more practice working with arrays, strings and numbers in Javascript you will build a toolkit of array methods that we commonly used in Ruby.
__ProTip__: Before you jump into coding in JavaScript look at the ruby array method counterparts and understand how they function, then think about ways you can recreate that behavior using control flow structures and iterators.

### Map
- This function should accept two arguments
  - an array of values
  - a 'callback' function to run
- each element of the array should be passed into the 'callback' function and the result should be stored in a new array
- The function should return the new array.
- The original array should remain intact

### Include
- This function should accept two arguments
  - an array of values
  - a value to check for
- If the value to check for is present in the array then the function should return true
- If the value to check for is not present in the array then the function should return false.
- The original array should remain intact

### Select
- This function should accept two arguments
  - an array of values
  - a 'callback' function to run
- The callback function should accept a single parameter and return true or false based on whatever condition is defined within that function
- An new array should be returned from the function with the values for which the callback returned true
- The original array should remain intact

### Reject
- This function should accept two arguments
  - an array of values
  - a 'callback' function to run
- The callback function should accept a single parameter and return true or false based on whatever condition is defined within that function
- An new array should be returned from the function with the values for which the callback returned false
- The original array should remain intact

### Reduce (+, -, *, /)
- This function should accept two arguments
  - an array of numbers
  - a 'callback' function to run
- The 'callback' function should perform one of the four basic math operations like reduce works in ruby
  - it should accept two arguments
- The final value should be returned
- The original array should remain intact

### Sample
- This function should accept one OR two arguments
  - an array of values
  - a sample size (optional)
- If no sample size is given then a single value, randomly selected from the array should be returned
- If a sample size is given
  - select random values from the original array
  - an array containing the randomly selected values should be returned
  - no duplicate values should be returned UNLESS there are duplicates in the original array
- The original array should remain intact

## Resources 
- [Helpful Hint](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice);
- [Ruby Array Methods](http://www.ruby-doc.org/core-2.1.2/Array.html)
- [Random Numbers in JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/random)

## Reading
- [Values, Variables, and Literals](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Values,_variables,_and_literals)
- [Functions in JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions)
- [Objects in JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Working_with_Objects)
- [Testing in JavaScript](http://jasmine.github.io/2.0/introduction.html)

#### Sample callbacks and arrays
```javascript
numbers = [1, 2, 3, 4];
strings = ['a','b','c','d'];

var capitalize = function(val){
  return val.toUpperCase();
};

// functions for Reduce

var add = function(initial, next){
  return initial + next;
};

var multiply = function(initial, next){
  return initial * next;
}
```