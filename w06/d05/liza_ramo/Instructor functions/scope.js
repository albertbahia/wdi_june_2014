myName = "Liza";

var each = function(fxn, arr) {
  for(var index = 0; index < arr.length; index++) {
    fxn(arr[index]);
  }
};

var app = function() {
  var prefix = "Fruit: ";
  var printAThing = function(el) {
    console.log(prefix + el);
  }
  var fruits = ['apple', 'orange', 'banana'];
  each(printAThing, fruits);
};

app();
