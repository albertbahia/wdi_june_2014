function subtract(a, b) {
	(a - b); 
}

function multiply(a , b){
	var product = a
	for (var i= 0; i < b; i++) {
		 (product += a);	 
	};
	console.log(product);
}

function divide(a , b){
	var timesInto = 1; 
	do{
		a = a - b; 
		timesInto += 1;
	}
	while(a - b > 0); 
	console.log(timesInto); 
}; 

divide(300, 50);
multiply(6, 6); 

