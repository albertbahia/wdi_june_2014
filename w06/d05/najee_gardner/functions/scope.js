var each = function(fxn, arr) {
  for (var i = 0; i < arr.length; i++) {
    fxn(arr[i]);

    console.log(prefix)
  }
};

// var displayElement = function(element) {
//   console.log(element)
// };
//
// var prefix = 'Hey';
// each(displayElement, [1,2,3,4,5])
//
// var numsArray = [1,2,3,4,5];
//
// each(displayElement, numsArray);

var app = function() {
  var prefix = "Fruit: ";

  var printAThing = function(el) {
    console.log(prefix + el);
  };

  var fruits = ['apple', 'orange', 'banana'];

  each(printAThing, fruits);
};

app();
