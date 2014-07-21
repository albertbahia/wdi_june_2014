var reduce = function(callBack, array) {
  var operator = 'sum';
  callBack(array, operator);

};

var sumIt = function(array, operator){
  var result = 0;
  var sum = 0;

  if(operator === 'sum'){
    for (var i = 0; i < array.length; i++) {
      sum += array[i];
    }
  }
  console.log(sum);
};

numArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
console.log('Original Array:');
console.log(numArray);
console.log('');

console.log('Result:');
reduce(sumIt, numArray);
