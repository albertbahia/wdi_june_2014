// -- accept 2 args (array of values, 'callback function to run')
// -- 'callback' accept 1 param & return T/F based on conditions w/in function
// -- new array should be returned from the function w/ values which 'callback' returned F
// -- original array should remain intact


var rejectNumbers = [1, 2, 3, 4];

var myReject = function(arrayOfValues, callbackFxn) {
  catchArray = [];

  for (var index = 0; index < arrayOfValues.length; index++) {
    if ((callbackFxn(arrayOfValues[index])) === false ) {
      var catchValue = (arrayOfValues[index]);
      catchArray.push(catchValue);
    }
  }
  return catchArray;
};

// -- CALLBACK FUNCTIONS
var rejectEvens = function(value) {
  if (((value) % 2) === 0 ) {
    return true;
  } else {
    return false;
  }
};

var rejectOdds = function(value) {
  if (((value) % 2 ) != 0 ) {
    return true;
  } else {
    return false;
  }
};

// -- RESULTS

var answerReject = myReject(rejectNumbers, rejectEvens); // => [1, 3]
var answerReject2 = myReject(rejectNumbers, rejectOdds); // => [2, 4]

console.log(answerReject);
console.log(answerReject2);

// -- MAKE SURE ORIGINAL ARRAY IS INTACT
console.log(rejectNumbers);
