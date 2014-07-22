// * Write a function to accept an array and print the elements in order

var arrayTest = [1, 2, 'boop', 'nah', 34];

var printFunction = function(array) {
	for (var i = 0; i < array.length; i++) {
		console.log( array[i] );
	}
};

printFunction(arrayTest);
