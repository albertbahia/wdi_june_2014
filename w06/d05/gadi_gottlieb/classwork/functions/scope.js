var each = function(fxn, arr) {
  for (var index = 0; index < arr.length; index++) {
    console.log(fxn(arr[index]));
  }
};

var app = function() {
  var prefix = "Fruit: ";
  var printAThing = function(el) {
    console.log(prefix + el);
  };
  var fruits = ["apple", "orange", "banana", "peach", "melon"];
  each(printAThing, fruits);
}

app();


var addTen  = function(x) {
  return x + 10;
}

var array = [10,20,30,40,50];

each(addTen, array);
