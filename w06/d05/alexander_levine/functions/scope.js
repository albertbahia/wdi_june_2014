var each = function(fxn, arr) {
 for (var i = 0; i < arr.length; i++) {
   fxn(arr[i]);
 }
}


var app = function() {
  var prefix = "Number: ";
  var add = function(num) {
    console.log(prefix + (num + 1));
  };
  var numbers = [1, 2, 3];

  each(add, numbers);
};

app();
