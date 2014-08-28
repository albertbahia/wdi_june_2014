var arr = [1, 2, 3, 4]; // returns [1, 2, 3,] [1, 3, 2] [2, 1, 3] [2, 3, 1] [3, 1, 2] [3, 2, 1] 
print_permutations_to_console(return_all_permutations(arr, [], arr.length, []));

function return_all_permutations(list, current_permutation, original_list_length, permutations) {
	if (current_permutation.length == original_list_length) {
		var temp = new Array();
		for (var x = 0; x < original_list_length; ++x) {
			temp[x] = current_permutation[x];
		}
		permutations.push(temp);
		delete(temp);
	}
	for (var i = 0; i < list.length; ++i) {
		current_permutation.push(list[i]);
		var spliced_array = new Array();
		for (var j = 0; j < list.length; ++j) {
			if (j != i) {
				spliced_array.push(list[j]);
			}
		}
		return_all_permutations(spliced_array, current_permutation, original_list_length, permutations);
		current_permutation.pop();
	}
	return permutations;
}

function print_permutations_to_console(permutations) {
	for (var i in permutations) {
		console.log(permutations[i]);
	}
}