var new_array = [];
var map = function(fxn, arr){
  for (var i=0; i < arr.length; i++){
    new_array.push(fxn(arr[i]));
  }
  return new_array;
};

var add = function(a){
  return a + 5;
};

var numbers = [1, 2, 3, 4];

map(add, numbers);
