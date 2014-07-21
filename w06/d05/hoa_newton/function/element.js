function elements(array){
	for (var index in array){
		console.log(array[index]);
	}
}

elements([1, 2, 'Hello'])
elements([1, "Dog", 'Hello'])