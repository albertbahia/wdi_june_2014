///////////////////////////
//          MAP          //
///////////////////////////
var names = ["Adam", "Ben", "Charlotte", "Dale"]
var newArray = []
var numbers = [1, 2, 3, 4];
var strings = ['a','b','c','d'];

var callback = function(array) {
  for (var i = 0; i < array.length; i++) {
    return newArray.push(array)
  }
};

var map = function(array, callback) {
    for (var i = 0; i < callback.length; i++) {
      return newArray.push(array);
    }
};

map(names, callback);
console.log(newArray);

///////////////////////////////
//          Include          //
///////////////////////////////

var include = function(array, check) {
    for (var i = 0; i < array.length; i++) {
      if (array[i] === check) {
        return true;
      }
      else {
        return false;
      }
    }
};

console.log(include(names, "Adam"));
console.log(include(names, "Bill"));

/////////////////////////////
//          Select         //
/////////////////////////////
// var selectArray = []
//
// var callMethod = function(search) {
//   var array = []
//   for (var i = 0; i < array.length; i++) {
//     array[i]
//     for (var j = i; i < search.length + i; j++) {
//       if (search[j] === array[i]) {
//         return true;
//       }
//       else {
//         return false;
//       }
//     }
//   }
// };
//
// var select = function(array, callMethod) {
//   for (var i = 0; i < array.length; i++) {
//     if (array === callMethod) {
//       return true;
//       selectArray.push(callback)
//     }
//     else {
//       return false;
//     }
//   }
// };
//
// console.log(select(names, callMethod("Adam")));
// console.log(selectArray)
// console.log(select(names, callMethod("Bill")));
// console.log(selectArray)

/////////////////////////////
//        Reject           //
/////////////////////////////
// var rejectArray = []

// var callerMethod = function(search){
//   for (var i = 0; i < search.length; i++)
//   {
//     if (!search[i] === callerMethod)
//     {
//       return true;
//     }
//     else
//     {
//       return false;
//     }
//   }
// }

// var reject = function(array, callerMethod) {
//   for (var i = 0; i < array.length; i++) {
//     if (array === callMethod) {
//       return true;
//           rejectArray.push(callback)
//     }
//     else {
//       return false;
//     }
//   }
// };

// console.log(reject(names, callerMethod("Adam")));
// console.log(rejectArray);
// console.log(reject(names, callerMethod("Adam")));
// console.log(rejectArray);

// ////////////////////////////////
// //          Reduce            //
// ////////////////////////////////
// var math = function(num1, num2) {
//   if '+' {
//     return num1 + num2;
//   }
//   else if '-' {
//     return num1 - num2;
//   }
//   else if '*' {
//     return num1 * num2;
//   }
//   else '/' {
//     return num1 / num2;
//   }
// };
//
// var reduce = function(array, math)
// {
//   for (var i = 0; i < array.length; i++)
//   {
//     if (math === '+')
//     {
//       return result = array[i] + array[i];
//     }
//     else if (math === '-')
//     {
//       return result = array[i] - array[i];
//     }
//     else if (math === '*')
//     {
//       return result = array[i] * array[i];
//     }
//     else (math === '/')
//     {
//       return result = array[i] / array[i]
//     }
//   }
// }
// reduce(numbers, '+');
// console.log(result);
// reduce(numbers, '-');
// console.log(result);
// reduce(numbers, '*');
// console.log(result);
// reduce(numbers, '/');
// console.log(result);


///////////////////////////
//        Sample         //
///////////////////////////

var sample = function(array){
  var randomArray = array[Math.floor(Math.random() * array.length)];
  return randomArray
};
console.log(sample(names));
console.log(sample(names));
console.log(sample(names));


var capitalize = function(val){
  return val.toUpperCase();
};

// functions for Reduce

var add = function(initial, next){
  return initial + next;
};

var multiply = function(initial, next){
  return initial * next;
}
