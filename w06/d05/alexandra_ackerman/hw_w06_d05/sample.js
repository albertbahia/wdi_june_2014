var sample = function(array, size) {
  //if size not set, sample automatically returns 1 value
  var size = size || 1;
  //new array of sampled elements
  var newArray = [];

  //when array is less than size of sample, select
  while(newArray.length < size) {
    var randomElement = Math.floor(Math.random() * array.length);
    newArray.push(array.splice(randomElement, 1)[0]);
  }
  return newArray;
}

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
console.log(sample(numbers, 3));
console.log(sample(numbers, 5));

strings = ['a','b','c','d'];
console.log(sample(strings, 2));
console.log(sample(strings));
