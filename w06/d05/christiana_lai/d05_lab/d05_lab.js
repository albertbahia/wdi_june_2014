// map
// var map = function(array, callback) {
//   var result = [];
//     for(var i = 0; i < array.length; ++i) {
//       result.push(callback(array[i]));
//     }
//   return result;
// };
//
// var addTen = function(array){
//   return array + 10;
// };
//
// numbers = [1, 2, 3, 4];
//
// console.log(map(numbers, addTen));

// include
// var include = function(array, value) {
//   for(var i = 0; i < array.length; ++i) {
//     if (array[i] === value) {
//       return true;
//     }
//   else {
//     return false;
//     }
//   }
// }
//
// var strings = ['a','b','c','d'];
//
// console.log(include(strings, 'a'));


// select
// var select = function(array, callback) {
//   var result = [];
//   for(var i = 0; i < array.length; ++i) {
//     if (callback(array[i])) {
//       result.push(array[i]);
//     }
//   }
//   return result;
// };
//
// var lessthan = function(element) {
//   return element < 5;
// };
//
// numbers = [1, 2, 3, 4];
// console.log(select(numbers, lessthan));



// reject
// var select = function(array, callback) {
//   var result = [];
//   for(var i = 0; i < array.length; ++i) {
//     if (!callback(array[i])) {
//       result.push(array[i]);
//     }
//   }
//   return result;
// };
//
// var lessthan = function(element) {
//   return element < 5;
// };
//
// numbers = [1, 2, 3, 4];
// console.log(select(numbers, lessthan));

// reduce


// sample
