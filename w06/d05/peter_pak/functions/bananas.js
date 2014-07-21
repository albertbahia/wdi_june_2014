var runner = function(f, num) {
  for (var i = 0; i < num; i++) {
      f();
  }
};

var hello = function() {
  console.log('hello');
};

// var hi = hello;
// hi();


// runner(hello);

var goodbye = function() {
  console.log('peace out')
};




runner(hello, 5);
runner(goodbye, 3);
