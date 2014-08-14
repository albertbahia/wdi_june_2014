# Double Sort

Please write a function that accepts an array of strings. Each element can either be a number ("2014") or a word ("bread").

Your method should sort and return the array such that:

1. All of the words are sorted alphabetically
2. All of the numbers are sorted numerically
3. The pattern of words and numbers in the array that is returned is the same as the pattern of words and numbers in the original array. (ie if the first item in the original array is a word, the first item in the returned array should be a word)

You can use standard library sort functions, and should assume that all inputs will be valid.

```javascript
sort(["sugar", "butter", "egg"]); 
=> ["butter", "egg", "sugar"]

sort(["12", "10", "3", "4", "1"]);
=> ["1", "3", "4", "10", "12"]

sort(["16", "8", "4", "salt", "baking", "soda"]);
=> ["4", "8", "16", "baking", "salt", "soda"]

sort(["2", "4", "banana", "1", "vanilla", "flour"]);
=> ["1", "2", "banana", "4", "flour", "vanilla"]
```