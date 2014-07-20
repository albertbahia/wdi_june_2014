function include(array, value) {
  for (var i = 0; i < array.length; i++) {
    if (array[i] === value) {
      return true;
    }
  }
  return false;
}

var words = ['im', 'da', 'bessss'];

console.log(include(words, 'da'));
console.log(include(words, 'swaaaggggzzz'))
