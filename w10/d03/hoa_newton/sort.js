function sort(array){
var stringArray = [];
var numArray = [];
	for (i in array) {
		sortedArray = array.sort();
		for (i in array){
			if isNaN(parseInt(array[i])){
				stringArray.push(array[i]);
			}
		}
	}
	
	
}