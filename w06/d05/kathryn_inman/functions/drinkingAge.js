// * Write a function to accept an age and returns
//   * true if you can drink
//   * false if you cannot drink

var drinkingAge = function(age){
	if (age >= 21) {
		return true;
	} else {
		return false;
	}
};

answer = drinkingAge(23)
console.log(answer)