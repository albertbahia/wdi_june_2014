function palindrome(word) {
  var chars = word.split('');

  // Reached middle of word successfully
  if (chars.length <= 1) {
    return true;
  }

  // My first and last are the same, check the inner word
  var first = chars.shift();
  var last = chars.pop();
  if (first === last) {
    return palindrome(chars.join(''));
  }

  // My first and last are not the same
  return false;
}

var words = [
  'hello',
  'racecar',
  'radar',
  'h',
  'animal'
];

words.forEach(function(el) {
  console.log(el + ': ' + palindrome(el));
});
