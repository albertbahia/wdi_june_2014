function sort(array) {
  for (var i = 0; i < array.length; i++) {
    a = array[i];
      for (var j = i; j > 0 && a < array[j - 1]; j--) {
        var b = array[j];
        if (isNaN(parseInt(a)) && isNaN(parseInt(b))) {
          array[j] = array[j - 1];
        } else if (isInteger(parseInt(a)) && isInteger(parseInt(b))) {
          array[j] = array[j - 1];
        } else {
        }
      }
      array[j] = a;
    }
    return array;
  }

function isInteger(x) {
  return x % 1 === 0;
  }






// function sort(arrayOfValues) {
//   var strings = [];
//   var numbers = [];
//   var finalSort = [];
//   arrayOfValues.forEach(function(value, index, array) {
//     if (isNaN(parseInt(value))) {
//       strings.push(value);
//     }
//     else {
//       numbers.push(value);
//     }
//   });
//   strings.sort();
//   numbers.sort(function(x,y) { return x - y });
//
//   arrayOfValues.forEach(function(value, index, array) {
//     if (isNaN(parseInt(value))) {
//       finalSort.push(strings.shift());
//     }
//     else {
//       finalSort.push(numbers.shift());
//     }
//   });
//
//   return finalSort;
//
// }
