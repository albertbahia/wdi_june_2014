function doubleSort(array) {
  var wordList = [];
  var numList = [];
  var tracker = []
  for (var i = 0; i < array.length; i++) {
    if (isNaN(array[i])) {
      wordList.push(array[i])
      tracker.push('w')
    } else {
      numList.push(array[i])
      tracker.push('n')
    }
  }
  wordList.sort();
  numList.sort();
  finalArray = [];

  for (var x = 0; x < tracker.length; x++) {
    if (tracker[x] === 'w') {
      finalArray.push(wordList.shift());
     } else {
       finalArray.push(numList.shift());
     }
  }
  console.log(tracker)
  console.log(finalArray)
};




// doubleSort(["sugar", "butter", "egg"]);
// => ["butter", "egg", "sugar"]

doubleSort(["12", "10", "3", "4", "1"]);
// => ["1", "3", "4", "10", "12"]

// doubleSort(["16", "8", "4", "salt", "baking", "soda"]);
// => ["4", "8", "16", "baking", "salt", "soda"]

// doubleSort(["2", "4", "banana", "1", "vanilla", "flour"]);
// => ["1", "2", "banana", "4", "flour", "vanilla"]
