// This function should accept two arguments, an array of values and a value to
//check for.  If the value to check for is present in the array then the function
//should return true, If the value to check for is not present in the array then
//the function should return false. The original array should remain intact.
var include = function(arr, value){
  for (var i = 0; i < arr.length; i++){
    if (arr.indexOf(value) != -1){
      return true;
    } else {
      return false;
    }
  }
};

var numbers = [1, 2, 3, 4];
include(numbers, 2);
