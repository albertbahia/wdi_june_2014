// This function should accept one OR two arguments an array of values
// a sample size (optional) If no sample size is given then a single value,
// randomly selected from the array should be returned If a sample size is given
// select random values from the original array, an array containing the randomly
// selected values should be returned no duplicate values should be returned
// UNLESS there are duplicates in the original array The original array should
// remain intact

var rand = function(arr) {
  var index = Math.floor(Math.random() * arr.length);
  return arr[index];
}

var numbers = [ 1, 2, 2, 2, 5 ];

var sample = function(arr, size){
  var copyArray = [];
  var newArray = [];
  var tempRand;
  var index;
  for (var i=0; i < arr.length; i++){
    copyArray.push(arr[i]);
  }
  if (size == undefined){
    choiceSize = 1;
  } else {
    choiceSize = size;
  } while (newArray.length < choiceSize) {
      tempRand = rand(copyArray);
      newArray.push(tempRand);
      index = copyArray.indexOf(tempRand);
      copyArray.splice(index, 1);
    } return newArray;
}

sample(numbers);
sample(numbers, 3);
sample(numbers, 5);
