var include = function(array, checkValue) {
  for (var i = 0; i < array.length; i++) {
    if (array[i] === checkValue) {
      return true;
    }
  }
  return false;
};

words = ["dost", "thou", "even", "hoist", "bro"]
console.log(include(words, "nope"));
console.log(include(words, "hoist"));
