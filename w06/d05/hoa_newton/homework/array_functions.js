//////// MAP //////////////////
var map = function(fxn, arr){
	var new_arr = [];
	for (var i = 0; i < arr.length; i++){
		new_arr.push(fxn(arr[i]));
	}
	return new_arr;
}

var element = function(num){
	return num * 2;
};
my_arr = [0, 1, 2, 12, 100, 222]
console.log(map(element, my_arr));

//////// SELECT ////////////////
var select = function(fxn, arr){
	var new_arr = [];
	for (var i = 0; i < arr.length; i++){
		if ( fxn(arr[i]) ){
     new_arr.push( arr[i] );
	 }
  }
  return new_arr;
};

function selectedNum(num){
	if (num >= 0){
		return true;
	}
};
console.log(select(selectedNum, my_arr));

////////// INCLUDE ///////////////
var include = function(value, array){
  for (var i = 0; i < array.length; i++){
    if (array[i] === value){
      return true;
    }
  }
  return false;
}
mix_array = [1, 4, 6, 'hello', 'cat'];
console.log(include(1, mix_array));
console.log(include("hi", mix_array));
console.log(include(6, mix_array));

/////////// REJECT ///////////////
var reject = function(fxn, arr){
 var new_arr = [];
 for (var i = 0; i < arr.length; i++){
   if ( fxn(arr[i]) ){
     new_arr.push( arr[i] );
    }
  }
  return new_arr;
};

function rejectedNum(num){
 if (num >= 10){
   return false;
 }
 return true;
};
console.log(reject(rejectedNum, my_arr));

/////////// REDUCE + //////////////
function reduce(fxn, array){
  var result = array[0];
  for (var i = 0; i < array.length; i++){
    result = fxn(result, array[i])
  }
  return result;
}

var add = function(x, y){
  return x + y;
}  

var subtract = function(x, y){
  return x - y;
}

var times = function(x, y){
  return x * y;
}

var divide = function(x, y){
  return x / y;
}
num_array = [90, 30, 10, 5]
console.log(reduce(add, num_array));
console.log(reduce(subtract, num_array));
console.log(reduce(times, num_array));
console.log(reduce(divide, num_array));

//////////// SAMPLE //////////////
function sample(arr, size){
  var sample_arr = []
  if (size === undefined){
    return arr[Math.floor(Math.random() * arr.length)];
  } else {
    for (var i = 0; i < size; i++){
      sample_arr.push(arr[Math.floor(Math.random() * arr.length)]);
    }
  }
  return sample_arr;
}
test_array = [1, 2, 4, 77, 92, "cat", "dog", "squirel"]
console.log(sample(test_array))
console.log(sample(test_array, 3))
console.log(sample(test_array, 2))

//////BETTER SAMPLE WITH NO DUPLICATION /////////
function sample2(arr, size){
  if (size === undefined){
    return arr[Math.floor(Math.random() * arr.length)];
  } else {
    var max_begin = arr.length - size;
    var random_begin = Math.floor(Math.random() * max_begin)
    return arr.slice(random_begin, random_begin + size);
  }
}
console.log(sample2(test_array));
console.log(sample2(test_array, 3))

