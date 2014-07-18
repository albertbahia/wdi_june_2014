// function subtraction(x, y){
// 	return x - y;
// }
// console.log(subtraction(30, 15));

// // product

function product(x, y){
	var result = 0;
	for (var i = 0; i < y; i++){
		result += x;
	}
	return result;
}
// console.log(product(10, 2));

// division
// function division(x, y){
// 	var result = 0;
// 	if (y === 0){
// 		return undefined;
// 	} else if (x < y){
// 		return 0;
// 	} else{
// 		while (x >= y){
// 	  	x -= y;
// 			result++;
// 		}
// 	}
// 	return result;
// }
// console.log(division(10, 2));

// Factorial
// function factorial(x){
// 	var result = 0;
// 	for (i = x; i >= 0; i--){
// 		result += product(x, (x - 1));
// 	}
// 	return result;
// }

//Recursion factorial
// function factorial(x){
// 	if (x === 1){
// 		return 1;
// 	}
// 	return product(x, factorial(x - 1))
// }
// console.log(factorial(5));
// console.log(factorial(4));

// Power
function power(x, y){
	var result = x;
	if (y === 0){
		return 1;
	}else{
		for (var i = 1; i < y; i++){
			result = product(result, x);
		}
	}
	return result;
}
console.log(power(5, 2));
