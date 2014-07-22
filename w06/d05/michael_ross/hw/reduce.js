var reduce = function(array, callback) {
  var total = array[0];
  for (var i = 0; i < array.length; i++) {
    total = callback(total, array[i])
  }
  return total;
};


var add = function(initial, next){
  return initial + next;
};

var multiply = function(initial, next){
  return initial * next;
};


numbers = [1, 4];

console.log(numbers);
console.log(reduce(numbers, add));
console.log(reduce(numbers, multiply));
