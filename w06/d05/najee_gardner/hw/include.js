function include(array, value) {
  // for (var i = 0; i < array.length; i++) {
  //   if (array[i] === value) {
  //     return true;
  //   }
  // }
  // return false;

  // recursive
  var newArray = array.slice(0);
  if (newArray.length === 0) { return false; }
  if (newArray[0] === value) { return true; }

  newArray.shift();
  return include(newArray, value);
}

var words = ['im', 'da', 'bessss'];

console.log(include(words, 'swaaaggggzzz'))
console.log(include(words, 'bessss'));
console.log(include(words, 'da'));
console.log(words);
