var each = function(fxn, arr) {
  for(var index = 0; index < arr.length; index++) {
    fxn(arr[index]);
  }
};

var app = function() {
  var prefix = "Word: ";
  var printAThing = function (element) {
  console.log(prefix + element);
};

var arr = ['do', 'you', 'even', 'hoist', 'bro'];

each(printAThing, arr);

};

app();
