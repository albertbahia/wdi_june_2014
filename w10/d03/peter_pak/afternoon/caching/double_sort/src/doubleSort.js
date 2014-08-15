// Francis
// function sort (arr) {

//   var numArr = [];
//   var wordArr = [];
//   var sortedArr = [];

//   // partition arr into types
//   for (var i = 0; i < arr.length; i++) {
//     if (isNaN(parseInt(arr[i]))) {
//       wordArr.push(arr[i])
//     } else {
//       numArr.push(arr[i])
//     }
//   }
//   numArr.sort(function(a,b) {
//     return a - b;
//   });
//   wordArr.sort();

//   // merge array back into single array
//   for (var i = 0; i < arr.length; i++) {
//     if (typeof parseInt(arr[i]) === 'number' && !isNaN(parseInt(arr[i]))) {
//       var pushElement = numArr.shift();
//       sortedArr.push(pushElement);
//     } else {
//       var pushElement = wordArr.shift();
//       sortedArr.push(pushElement);
//     }
//   }
//   return sortedArr;
// }

// Sean T
// function sort(arr) {

//   // Initializing sub-arrays
//   var num_array = []
//   var string_array = []
//   var is_num_array = []

//   // Creating the sub-arrays and marking down whether or not an index in the
//   // original array contained a string or a number.
//   for(var i = 0; i < arr.length; i++) {
//     if (isNaN(parseInt(arr[i]))){
//       string_array.push(arr[i]);
//       is_num_array.push(false);
//     }
//     else {
//       num_array.push(arr[i]);
//       is_num_array.push(true);
//     }
//   }

//   // Sort each sub-array
//   num_array.sort(function(a, b){ return a-b; });
//   string_array.sort();

//   // Initialize the array we want to return
//   var final_array = [];
//   var element_to_insert;

//   // Creating the array we want to return
//   for(var i = 0; i < is_num_array.length; i++) {
//     element_to_insert = is_num_array[i] ? num_array.shift() : string_array.shift();
//     final_array.push(element_to_insert);
//   }

//   return final_array
// }

// McK 
function sort(arrayOfValues) {
  var strings = [];
  var numbers = [];
  var finalSort = [];
  arrayOfValues.forEach(function(value, index, array) {
    if (isNaN(parseInt(value))) {
      strings.push(value);
    }
    else {
      numbers.push(value);
    }
  });
  strings.sort();
  numbers.sort(function(x,y) { return x - y });

  arrayOfValues.forEach(function(value, index, array) {
    if (isNaN(parseInt(value))) {
      finalSort.push(strings.shift());
    }
    else {
      finalSort.push(numbers.shift());
    }
  });

  return finalSort;

}