// sorts a list of objects with first and last name properties by last name

// Hari Solution
// -------------
function sort_object_alphabetically(name_list) {
	return name_list.sort(function(a, b) {
		if (a.last < b.last) {
			return -1;
		}
		else if (a.last === b.last) {

			if (a.first < b.first) {
				return -1;
			}
			else if (a.first > b.first) {
				return 1;
			}
			else {
				return 0;
			}

		}
		else {
			return 1;
		}
	});
}

// Stock Solution
// --------------
// function sort_object_alphabetically(name_list) {
// 	sorted_list = [name_list.shift()];
// 	while (name_list.length > 0) {
// 		for (var i = 0; i < sorted_list.length; ++i) {
// 			if (name_list[0].last < sorted_list[i].last) {
// 				sorted_list.splice(i, 0, name_list.shift());
// 				break;
// 			}else if (i == sorted_list.length - 1) {
// 				sorted_list.push(name_list.shift());
// 				break;
// 			}
// 		}
// 	}
// 	return sorted_list;
// }

name_list = [
{
	first: "mary",
	last: "jane"
},{
	first: "anna",
	last: "abigale"
},{
	first: "bohemith",
	last: "wandershmidt"
},{
	first: "wanabanana",
	last: "bobsagget"
},
{
	first: "anabababa",
	last: "bobsagget"
} ]

console.log(sort_object_alphabetically(name_list));
