// var firstTenNums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

// var eachSquare = function(num){
// 	return num * num;
// }

function sumSquare(num){
	var result = 0;
	for (var i = 1; i <= num; i++ ){	
		result += Math.pow(i, 2);
	}
	return result;
}

function squareOfSum(num){
	var sumOfTen = 0;
	for (var i = 1; i <= num; i++){
		sumOfTen += i;
	}
	return Math.pow(sumOfTen, 2);
}

var subtraction = function(num){
	return squareOfSum(num) - sumSquare(num);
}

console.log(sumSquare(10));
console.log(squareOfSum(10));
console.log(subtraction(10));