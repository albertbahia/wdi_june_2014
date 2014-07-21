var each = function(fxn, arr) {
  for (var i in arr) {
    fxn(arr[i]);
  }
};

var map = function(fxn, arr) {
  var new_array = [];
  for (var i in arr) {
    new_array.push(fxn(arr[i]));
  }
  return new_array;
};

var app = function() {

  var prefix = 'Fruit: ';
  var dummy = function(el) {
    console.log(prefix + el);
  };
  var fruits = ['apple', 'orange', 'banana'];
  var nums = [1, 2, 3];
  each(dummy, fruits);

  var add = function(num) {
    num + 1;
  };

  map(add, nums);

};

app();
