var each = function(fxn, arr) {
  // each
  for (var i = 0; i < arr.length; i++ ) {
    fxn(arr[i]);
  }
}

// var dummy = function(el) {
//   console.log(el);
// }
//
// array = [1,2,3]
// each(dummy, array);
// string_array = ["dost", "thou", "even", "hoist,", "brother"]
// each(dummy, string_array);

var app = function() {
  var prefix = "Fruit: ";
  var printAThing = function(el) {
    console.log(prefix + el);
  }
  var brother = ["apple", "orange", "pear", "banana", "clementine"];
  each(printAThing, brother);
}

app();
