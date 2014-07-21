// -- accepts 2 args (array of values, 'callback' function to run)
// -- 'callback' function accept 1 param & return T / F based on condition within
// -- new array should be returned from function w/ values for which 'callback' returned T
// -- original array should remain intact

var selectNumbers = [1, 2, 3, 4];

var mySelect = function(arrayOfValues, callbackFxn) {
  var catchArray = [];

  for (var index = 0; index < arrayOfValues.length; index++) {
    if ((callbackFxn(arrayOfValues[index])) === true ) {
      var catchValue = (arrayOfValues[index]);
      catchArray.push(catchValue);
    }
  }
  return catchArray;
};


// -- CALLBACK FUNCTIONS
var findEvens = function(value) {
  if (((value) % 2) === 0) {
    return true;
  } else {
  return false;
  }
};

var findOdds = function(value) {
  if (((value) % 2) != 0) {
    return true;
  } else {
  return false;
  }
};

// -- RESULTS
var answerSelect = mySelect(selectNumbers, findEvens); // => [2, 4]
var answerSelect2 = mySelect(selectNumbers, findOdds); // => [1, 3]

console.log(answerSelect);
console.log(answerSelect2);


// -- MAKE SURE ORIGINAL ARRAY IS INTACT
console.log(selectNumbers);
