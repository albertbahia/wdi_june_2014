// This function should accept two arguments an array of values and a 'callback'
// function to run. The callback function should accept a single parameter and
// return true or false based on whatever condition is defined within that function
// An new array should be returned from the function with the values for which the
// callback returned true The original array should remain intact
var new_array = [];
var select = function(fxn, arr){
  for (var i = 0; i < arr.length; i++){
    if (fxn(arr[i])) {
      new_array.push(arr[i]);
    }
  }
  return new_array;
};

var isEven = function (n) {
   return (n % 2 == 0);
}

var numbers = [1, 2, 3, 4];
select(isEven, numbers);
