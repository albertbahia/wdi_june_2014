// -- accepts 2 args (array of values, a value to check for)
// -- if value is present in array, function should return true
// -- if value is not present in array, function should return false
// -- original array should remain intact

var includeStrings = ['a','b','c','d'];
var includeNumbers = [1, 2, 3, 4];

var myInclude = function(arrayOfValues, valueToCheckFor) {
  for (var arrayIndex = 0; arrayIndex < arrayOfValues.length; arrayIndex++) {
    if (arrayOfValues.indexOf(valueToCheckFor) > -1 ) {
      return true;
    } else {
      return false;
    }
  }
};

var answerInclude = myInclude(includeStrings, 'c');
console.log(answerInclude);
// true

var answerInclude2 = myInclude(includeStrings, 'e');
console.log(answerInclude2);
// false

var answerInclude3 = myInclude(includeStrings, 3);
console.log(answerInclude3);
// false

var answerInclude4 = myInclude(includeNumbers, 4);
console.log(answerInclude4);
// true
