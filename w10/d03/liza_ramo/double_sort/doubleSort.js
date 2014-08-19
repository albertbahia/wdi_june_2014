/////////////////////////
//////// Mine: ///////
///////////////////////

// function doubleSort(array) {
//   var numArray = [];
//   var stringArray = [];
//
//   for (var i = 0; i < array.length; i++) {
//     return typeof array[i]
//     if (array[i] === 'number') {
//       numArray.push(i)
//       numArray[i].replace(i, "int")
//     } else {
//       stringArray.push(i)
//       stringArray[i].replace(i, "string")
//     }
//   }
//
//   numArray.sort().parseInt()
//   for (var i = 0; i < numArray.length; i++) {
//     numArray[i]
//   }
//
// }

// Directions: //

// example array = [ "salt", "3", "1", "bananas" ]

// loop through the array
// return each element's type
  // if i = int:
      // put value of i into new numArray, mark i's position as "int" in array
  // else if i = string:
    // put value of i into new stringArray, mark i's position as "string" in array

  // array = [ "string", "int", "int", "string"]
  // numArray = [ "3", "1" ]
  // stringArray = [ "salt", "bananas" ]

  // numArray.sort(function(a,b){ return a - b; })
  // loop through the sorted numArray:
    // for every numArray[i], loop through array & replace the first "int" with numArray[i]

  // Sorting nums:
  // [1, 101, 12].sort(function(a,b){ return a - b; })



  // stringArray.sort()
  // loop through stringArray:
      // for every stringArray[i], loop through array & replace the first "string" with stringArray[i]



/////////////////////////
//////// Answers ///////
///////////////////////

////////////////////
//// Khadijah /////
//////////////////
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

///////////////////
////// Najee //////
///////////////////

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
