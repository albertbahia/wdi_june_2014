// Map
function map(fxn, array) {
  new_array = []
  for (var i = 0; i < array.length; i++) {
     new_array.push(fxn(array[i]));
  }
  return new_array
}

function add(num) {
  return num + 2;
}

// Include
function include(array, value) {
  var includes = false;
  for (var i = 0; i < array.length; i++) {
    if (array[i] === value) {
      var includes = true;
    }
  }
  return includes;
}

// Select
function select(array, fxn) {
  var selectArray = [];
  for (var i = 0; i < array.length; i++) {
    if (fxn(array[i]) === true) {
      selectArray.push(array[i]);
    }
  }
  return selectArray;
}

function divideByTwo(num) {
  if (num % 2 === 0) {
    return true;
  } else {
    return false;
  }
}

// Reject
function reject(array, fxn) {
  var selectArray = [];
  for (var i = 0; i < array.length; i++) {
    if (fxn(array[i]) === false) {
      selectArray.push(array[i]);
    }
  }
  return selectArray;
}

function divideByTwo(num) {
  if (num % 2 === 0) {
    return true;
  } else {
    return false;
  }
}

//Reduce
function reduce(array, fxn) {
  var reducedNumber = 0;
  for (var i = 0; i < array.length; i++) {
    reducedNumber = fxn(reducedNumber, array[i]);
  }
  return reducedNumber;
}

function add(num1, num2) {
  return num1 + num2;
}

// Sample
function sample(array, sampleNumber) {
  var arrayCopy = array;
  var sampleArray = [];
  if (sampleNumber === undefined) {
    sampleNumber = 1;
  }
  for (var i = 0; i < sampleNumber; i++) {
    var sampleIndex = Math.floor(Math.random()*arrayCopy.length);
    sampleArray.push(arrayCopy[sampleIndex]);
    arrayCopy.splice(sampleIndex, 1);
  }
  return sampleArray;
}
