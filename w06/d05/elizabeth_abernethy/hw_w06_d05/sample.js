// -- should accept 1 OR 2 args (array of values, sample size *optional)
// -- if no sample size given, then return randomly selected single value
// -- if sample size is given: select values from original array, return new array w/ selected values
// -- NO DUPS should be returned unless there are duplicates in the original array
// -- original array should remain intact


var sampleNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

var mySample = function(array, sampleSize) {
  var catchArray = [];
  if (sampleSize === undefined) {
    var randomValue = array[Math.floor(array.length * Math.random())];
    catchArray.push(randomValue);
    return catchArray;
  } else if ( sampleSize > 1 ) {
    for (var i = array.length; i > 0; i--) {
      sampleNumbers.sort(function() { return 0.5 - Math.random() });
      var random = Math.floor(Math.random() * ( i + 1 ));
    }
    return array.slice(i, sampleSize);
  }
};


// test cases
var sample1 = mySample(sampleNumbers);
var sample2 = mySample(sampleNumbers, 4);
var sample3 = mySample(sampleNumbers, 3);
var sample4 = mySample(sampleNumbers, 7);
var sample5 = mySample(sampleNumbers, 2);

console.log(sample1);
console.log(sample2);
console.log(sample3);
console.log(sample4);
console.log(sample5);


// return original array to see if it is altered
console.log(sampleNumbers);
