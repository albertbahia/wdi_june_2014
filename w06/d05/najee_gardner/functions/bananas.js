var runner = function(func, num) {
  for (var i=0; i < num; i++ ) {
    func();
  }
};

var hello = function() {
  console.log('Hello.');
};

var hi = hello;
// hi();

runner(hi, 5);
