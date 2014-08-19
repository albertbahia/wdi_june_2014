function sort (arr) {

  var numArr = [];
  var wordArr = [];
  var sortedArr = [];

  // partition arr into types
  for (var i = 0; i < arr.length; i++) {
    isNaN(parseInt(arr[i])) ? wordArr.push(arr[i]) : numArr.push(arr[i])
  }

  // sort partitioned arrays
  numArr.sort(function(a,b) { return a - b; });
  wordArr.sort();

  // merge array back into single array
  for (var i = 0; i < arr.length; i++) {
    !isNaN(parseInt(arr[i])) ? sortedArr.push(numArr.shift()) : sortedArr.push(wordArr.shift());
  }
  return sortedArr;

}

var arrToSort = ["16", "8", "4", "salt", "baking", "soda"];
var arrToSort2 =  ["2", "4", "banana", "1", "vanilla", "flour", "0", "apple"];

console.log(sort(arrToSort));
console.log(sort(arrToSort2));
