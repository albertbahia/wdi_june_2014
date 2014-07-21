var sample = function(array) {
  var randomValue = Math.floor(Math.random()*array.length);
  return array[randomValue];
};


var anyArray = ['batman', 'ryu', 'ironman'];
console.log('Original Array:');
console.log(anyArray);
console.log('');

console.log('Sample:');
var response = sample(anyArray);
console.log(response);
