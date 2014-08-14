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