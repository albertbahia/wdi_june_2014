var each = function(fxn, arr) {
  for(var i=0;i<arr.length;i++){
    fxn(arr[i]);
  }
};

var app = function() {

  fruits = ["apple","orange","banana","pear"];
  prefix = "Fruit: ";
  function double(num) {
    console.log( num * 2 );
  }

  var printAThing = function(el) {
    console.log(prefix + el)
  };

  //each(double, array);
  each(printAThing, fruits);
}

app();
