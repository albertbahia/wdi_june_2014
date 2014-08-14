var each = function(fxn, arr){
	for (index in arr){
		fxn(arr[index]);
		console.log(fxn(arr[index]));
	}	
};

// var dummy = function(el) {
// 	console.log(el); 
// }

// var add_one = function(num) {
// 	return num += 1; 
// }

// each(add_one, [1, 2, 5, 2])



