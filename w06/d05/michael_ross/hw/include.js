var include = function(array, checkValue) {
  for (var i = 0; i < array.length; i++) {
    if (array[i] === checkValue) {
      return true;
    }
  }
  return false;
};

words = ["gza", "rza", "ODB", "method man"]

console.log(words);
console.log(include(words, "gza"));
console.log(include(words, "rza"));
console.log(include(words, "method man"));
console.log(include(words, "ODB"));
console.log(include(words, "wu tang"));
