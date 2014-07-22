// Add
var add = function(num1, num2) {
	return num1 + num2;
};

console.log("addition result: " + add(2, 3));

// Subtract
var subtract = function(num1, num2) {
	return num1 - num2;
};

console.log("subtraction result: " + subtract(5, 2));

// Times (num1 multiplied by aka times num2)
var times = function(num1, num2) {
	var answer = 0;
	for (var integer = 0; integer < num2; integer++) {
		answer += num1;
	}
	return answer;
};

console.log("times result: " + times(6, 5));

// Divided (num1 divided by num2)
var dividedBy = function(numerator, denominator) {
	var counter = 0;
	while (numerator >= denominator){
		numerator -= denominator;
		counter = counter + 1;
	}
	return counter;	
};


console.log("division result: " + dividedBy(12, 5));

// Factorial 
var factorial = function(num) {
	var result 
}