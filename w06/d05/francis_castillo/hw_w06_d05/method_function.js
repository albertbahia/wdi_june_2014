// ///////MAP Function ///////
numbers = [1, 2, 3, 4];
numbers1 = [125, 5, 5, 5];
strings = ['a','b','c','d','e','f','g'];

function map (arr, fxn) {
  newArr = [];
  for (var i = 0; i < arr.length; i++) {
    newArr.push(fxn(arr[i]));
  }
  return newArr;
}

var blockMap = function(arg) {
  return arg += 100;
};

console.log(map(numbers, blockMap));
console.log(map(numbers, function(arg) {
  return arg += 200;
}));

//////////Include/////////////////////

function include (arr, find) {
  for (var i = 0; i < arr.length; i++) {
    if (arr[i].toLowerCase() === find.toLowerCase()) {
      return true;
    }
  }
  return false;
}

console.log(include(strings, "c"));
console.log(include(strings, "f"));

///////////////Select///////////////////////

function select (arr, fxn) {
  newArr = [];
  for (var i = 0; i < arr.length; i++) {
    if (fxn(arr[i])) {
      newArr.push(fxn(arr[i]));
    }
  }
  return newArr;
}

var blockSelect = function(arg) {
  if (arg > 3) {
    return arg;
  }
};

console.log(select(numbers, blockSelect));
console.log(select(numbers, function(arg) {
    if (arg < 3) {
      return arg;
    }
}));

//////////////////Reject////////////////

function reject (arr, fxn) {
  newArr = [];
  for (var i = 0; i < arr.length; i++) {
    if (fxn(arr[i])) {
      newArr.push(fxn(arr[i]));
    }
  }
  return newArr;
}

var blockReject = function(arg) {
  if (arg > 3 === false) {
    return arg;
  }
};
console.log(reject(numbers, blockReject));
console.log(reject(numbers, function(arg) {
    if (arg < 3 === false) {
      return arg;
    }
}));

///////////////Reduce/////////////////

function reduce (arr, fxn) {
  var total = arr[0];
  for (var i = 1; i < arr.length; i++) {
    total = fxn(total,arr[i]);
  }
  return total;
}

var blockReduceAdd = function(arg1, arg2) {
  return (arg1 + arg2);
};
var blockReduceSub = function(arg1, arg2) {
  return arg1 - arg2;
};
var blockReduceMultiply = function(arg1, arg2) {
  return arg1 * arg2;
};
var blockReduceDivide = function(arg1, arg2) {
  return arg1 / arg2;
};

console.log(reduce(numbers, blockReduceAdd));
console.log(reduce(numbers, blockReduceSub));
console.log(reduce(numbers, blockReduceMultiply));
console.log(reduce(numbers1, blockReduceDivide));

//////////////Sample/////////////

function random(num) {
  var max = num;
  var min = 0;
  return Math.floor(Math.random() * (max - min + 1) + min);
}

function sample1 (arg1,fxn) {
  return arg1[random((arg1.length - 1))];
}

function sample2 (arg1, arg2) {
  oldArr = arg1;
  newArr = [];
  if(arg2 > arg1.length) {
    return console.log("Size of argument to large array is " + arg1.length + " elements long!");
  }
  for (var i = 0; i < arg2; i++) {
    var index = random((arg1.length - 1));
    newArr.push(oldArr[index]);
    console.log(oldArr);
    oldArr.splice(index,1);
  }
  return newArr;
}

function sample (arg1, arg2) {
  if(arg2) {
    return sample2(arg1, arg2);
  } else {
    return sample1(arg1);
  }
}

console.log(random(4));
console.log(sample(strings));
console.log(sample(strings,3));
console.log(sample(strings,8));
