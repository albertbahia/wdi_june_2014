//ATTEMPT ONE
// var each = function (array, action) {
//   for (var i = 0; i < array.length; i++) {
//     action(array[i]);
//   }
// };

// var map = function(fxn, array) {
//   var resfult = []; 
//   each(array, function(element) {
//     result.push(fxn(element));
//   });
//   return result;
// }

var map = function(fxn, array) {
  var result = []; 
  for (var i = 0; i < array.length; i++) {
    result.push(fxn(array[i]));
  }
  return result;
};

var triple = function (element) {
  return element * 3;
};

var capitalize = function(val){
  return val.toUpperCase();
};

numbers = [1, 2, 3, 4];
console.log(map(triple, numbers));
console.log(numbers);

strings = ['a','b','c','d'];
console.log(map(capitalize, strings));
console.log(strings);