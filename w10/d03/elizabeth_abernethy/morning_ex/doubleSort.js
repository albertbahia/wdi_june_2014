// all words are sorted alphabetically
// all numbers are sorted numerically
// pattern of w/nums returned is the same as the pattern of w/nums in original
// ---- ex: if 1st item in original is a word, then 1st item in returned is a word


// loop > check to see if regular string or integer
// if element = integer
// if element = string


// ------------------------- ATTEMPT 1 -----------------------------

// function doubleSort(arrayOfStrings) {
//   var newArray = [];
//   for (var i = 0; i < arrayOfStrings.length; i++) {
//     if ( typeof arrayOfStrings[i] === 'string' ) { /// NOT ABLE TO PICK OUT NUMS
//       var toInteger = parseInt(arrayOfStrings[i]);
//       newArray << toInteger;
//     } else {
//       newArray << arrayOfStrings[i];
//     }
//   }
//   return newArray;
// }

// can't pick out numbers from strings yet

// ------------------------- ATTEMPT 2 -----------------------------

function doubleSort(arrayOfStrings) {
  var newArray = [];
  for (var i = 0; i < arrayOfStrings.length; i++) {
    if ( isNaN(arrayOfStrings[i]) === false ) {
      var toInteger = parseInt(arrayOfStrings[i]);
      newArray.push(toInteger);
    } else {
      newArray.push(arrayOfStrings[i]);
    }
  }
  newArray.sort();
  newArray.sort(function(a,b) {return a-b; });
  return newArray;
}

// -- sorts both numbers AND words in correct order, but doesn't retain original order


// ------------------------- ANSWER -----------------------------
