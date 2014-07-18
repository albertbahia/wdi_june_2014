// Named function
function hello(message) {
  console.log("Hi there. " + message);
}

hello("This is jackass.");
hello("This is sparta.");
hello("This is dog.");

// Anonymous function stored in a variable
var add = function(a, b) {
  return a + b;
};

var answer = add(3, 5);
console.log(answer);
