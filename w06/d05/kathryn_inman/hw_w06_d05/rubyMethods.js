var numbers = [1, 2, 3, 4];
var strings = ['a','b','c','d'];

// Map

var capitalize = function(val){
  return val.toUpperCase();
};

var map = function(fxn, arr) {
	var newArray = [];
	for (var i = 0; i < arr.length; i++) {
		newArray.push(fxn(arr[i]));
	}
	return newArray;
}

// console.log(map(capitalize, strings));

// Include

var include = function(value, arr) {
	for (var i = 0; i < arr.length; i++) {
		if (arr[i] == value) {
			return true;
		} else {
			return false;
		}
	} 
}

// console.log(include(2, numbers));

// Select

var isEven = function(value){
	if (value % 2 == 0) {
		return true;
	} else {
		return false;
	}
}

// console.log(isEven(6));

var select = function(fxn, arr) {
	var selectedValuesArray = [];
	for (var i = 0; i < arr.length; i++) {
		if (fxn(arr[i])) {
			selectedValuesArray.push(arr[i]);
		} 
	}
	return selectedValuesArray;
}

// console.log(select(isEven, numbers));

// Reject

var reject = function(fxn, arr) {
	var unrejectedValuesArray = [];
	for (var i = 0; i < arr.length; i++) {
		if (!fxn(arr[i])) {
			unrejectedValuesArray.push(arr[i]);
		} 
	}
	return unrejectedValuesArray;
}

// console.log(reject(isEven, numbers))

// Reduce

// functions for Reduce

var add = function(initial, next){
  return initial + next;
};

var multiply = function(initial, next){
  return initial * next;
}

var numbersExtended = [1, 2, 3, 4, 12, 34, 2, 6];

var reduce = function(fxn, arr) {
	var finalValue = 1;
	for (var i = 0; i < arr.length; i++) {
		var arrSlice = arr.slice(i, i+1);
		finalValue = fxn(finalValue, arrSlice[0]);
	}
	return finalValue-1;
}


console.log(reduce(add, numbersExtended));
console.log(reduce(multiply, numbersExtended));


// Sample

var sample = function(arr, limit) {


	
}














