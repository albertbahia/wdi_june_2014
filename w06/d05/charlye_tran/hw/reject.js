var new_array = [];
var reject = function(fxn, arr){
  for (var i = 0; i < arr.length; i++){
    if ((fxn(arr[i])) === false) {
      new_array.push(arr[i]);
    }
  }
  return new_array;
};

var isEven = function (n) {
   return (n % 2 == 0);
}

var numbers = [1, 2, 3, 4];
reject(isEven, numbers);
