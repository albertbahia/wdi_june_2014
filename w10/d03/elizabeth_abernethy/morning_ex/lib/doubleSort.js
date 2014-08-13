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




///////////////////////////////
//          ANSWERS          //
///////////////////////////////



// ------------------------- NAJEE GARDNER  -----------------------------

function sort(array) {
  var numbers = [];
  var words = [];
  var placement = [];

  for (var i = 0; i < array.length; i++) {

    if (parseInt(array[i])) {
      numbers.push(array[i]);
      placement.push('number');
    } else {
      words.push(array[i]);
      placement.push('word')
    }
    count++;
  }

  numberSwap = true
  wordSwap = true

  var whileCount = 0;
  while (numberSwap === true || wordSwap === true) {
    numberSwap = false
    wordSwap = false

    var forCount = 0;

    for (var i = 0; i < numbers.length; i++) {
      if (parseInt(numbers[i]) > parseInt(numbers[i + 1])) {
        var temp = numbers[i];
        numbers[i] = numbers[i + 1];
        numbers[i + 1] = temp;
        numberSwap = true;
      }
      forCount++;
    }

    for (var i = 0; i < words.length; i++) {
      if (words[i] > words[i + 1]) {
        var temp = words[i];
        words[i] = words[i + 1];
        words[i + 1] = temp;
        wordSwap = true;
      }
    }
    whileCount++;
  }

  var sortedArray = [];

  for (var i = 0; i < placement.length; i++) {
    if (placement[i] === 'number') {
      sortedArray.push(numbers.shift());
    } else {
      sortedArray.push(words.shift());
    }
  }

  return sortedArray;
}



// ------------------------- KHADIJAH  -----------------------------



var doubleSort = function(arr) {
  var nums = [];
  var strs = [];
  var sorted = [];
  for( i in arr) {
    isNaN(arr[i]) ? strs.push(arr[i]) : nums.push(arr[i]);
  }
  strs.sort();
  nums.sort(function(a,b) { return a - b; });

  var counter_s = 0;
  var counter_i = 0;

  for( i in arr) {
    if(isNaN(arr[i])) {
      sorted[i] = strs[counter_s];
      counter_s++;
    } else {
      sorted[i] = nums[counter_i];
      counter_i++;
    }
  }
  console.log(sorted);
};

doubleSort(["sugar", "butter", "egg"]);
doubleSort(["12", "10", "3", "4", "1"]);
doubleSort(["16", "8", "4", "salt", "baking", "soda"]);
doubleSort(["2", "4", "banana", "1", "vanilla", "flour"]);
