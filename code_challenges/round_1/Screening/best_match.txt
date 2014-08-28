// (array of strings, string)
// return closest match to string in array of strings
str_array = ['hey', 'bob', 'sandy', 'more', 'words', 'oh'];
str = 'hello';

console.log(bestMatch(str_array, str));

// string properties
//   - same lengths
//   - same numbers of each character
//   - character strength gets weaker with string index

// subtract length difference
// subtract character difference
// add character strenght based on index

function bestMatch(str_array, compare_str) {
	str_scores = {};
	compare_char_count = countChars(compare_str);

	for (var index in str_array) {
		// initialize all scores to 0
		str_scores[str_array[index]] = 0; 
	}

	for (var string in str_scores) {
		// if the strings are different lengths, the length difference is subtracted from the score
		str_scores[string] -= Math.abs(string.length - compare_str.length);
		string_char_count = countChars(string);

		for (var character in string_char_count) {
			if (typeof compare_char_count[character] === 'undefined') {
				compare_char_count[character] = 0;	
			}
			// the chacter count differences are also subtracted from each score
			str_scores[string] -= Math.abs(string_char_count[character] - compare_char_count[character]);
		}
		
		for (var index in string) {
			if (string[index] === compare_str[index]) {
				// the smaller the string index, the more important the character is
				// the fifth index is 5x less important than the first index (in my definition)
				str_scores[string] += 5/index;    
			}
		}
	}

	var highest_score = -9999;
	var best_match = '';
	for (var string in str_scores) {
		if (highest_score < str_scores[string]) {
			highest_score = str_scores[string];
			best_match = string;
		}
	}
	
	return best_match;

	function countChars(str) {
		var character_count = {};
		for (var index in str) {
			if (character_count[str[index]] === undefined) {
				character_count[str[index]] = 1;
			}else{
				character_count[str[index]]++;
			}
		}
		return character_count;
	}
}