//SAMPLE CALLBACKS AND ARRAYS
var multiply = function(initial, next){
  return initial * next;
}

var add = function(initial, next){
  return initial + next;
};

var divide = function(initial, next){
  return initial / next;
};

var capitalize = function(val){
  return val.toUpperCase();
};

var isOdd = function(num){
  if(num%2!==0){
    return true;
  }else{
    return false;
  }
}

numbers = [1, 2, 3, 4];
numbers2 = [1, 2, 3, 4, 5];
strings = ['a','b','c','d'];
//=========================

//MAP =============
function map(arr, fxn) {
  var newArray = [];
  for (var i=0;i<arr.length;i++){
    newArray.push(fxn(arr[i]));
  }
  return newArray;
}

console.log("Output of Map function:");
console.log(map(strings, capitalize));

//INCLUDE
function include(array, checkVal){
  if(array.indexOf(checkVal)!= -1){
    return true;
  }else{
    return false;
  }
}

console.log("Outputs of Include function:");
console.log(include(strings, 'a')); //true
console.log(include(strings, 'f')); //false
console.log(include(numbers, 7)); //false
console.log(include(numbers, 2)); //true

//SELECT =====================
function select(array, fxn) {
  var newArray = [];
  for (var i=0;i<array.length;i++){
    if(fxn(array[i])==true){
      newArray.push(array[i]);
    }
  }
  return newArray;
}

console.log("Output of Select function:");
console.log(select(numbers, isOdd));
console.log(select(numbers2, isOdd));

//REJECT
function reject(array, fxn) {
  var newArray = [];
  for (var i=0;i<array.length;i++){
    if(fxn(array[i])==true){
      ;
    } else {
      newArray.push(array[i]);
    }
  }
  return newArray;
}

console.log("Output of Reject function:");
console.log(reject(numbers, isOdd));
console.log(reject(numbers2, isOdd));


//numbers = [1, 2, 3, 4, 5];
//REDUCE =========================
function reduce(array, fxn) {
  var holder = array[0];
  for(var i=1;i<array.length;i++){
    holder = fxn(holder, array[i]);
  }
  return holder;
}

console.log("Outputs of Reduce function:")
console.log(reduce(numbers, add));
console.log(reduce(numbers, multiply));
console.log(reduce(numbers2, add));
console.log(reduce(numbers2, multiply));
console.log(reduce(numbers2, divide));

//SAMPLE ========================
function sample(array, num1) {
  if(arguments.length==2){
    var newArray = [];
    for(var i=0;i<num1;i++){
      newArray.push(array[((Math.floor(Math.random()*array.length)))]);
    }
  } else {
      return array[((Math.floor(Math.random()*array.length)))];
    }
      return newArray;
}

console.log("Outputs of Sample function:");
console.log(sample(strings, 9));
console.log(sample(strings, 4));
console.log(sample(strings));
