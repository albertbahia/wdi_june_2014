// set union, intersection, difference
// identical

ar1 = ['a', 'b', 'b', 'c'];
ar2 = ['b', 'c', 'd', 'e'];
console.log('ar1:', ar1, 'ar2:', ar2);
console.log('union:', set_union(ar1, ar2));
console.log('intersection:', set_intersection(ar1, ar2));
console.log('difference:', set_difference(ar1, ar2));

ar1 = [1, 1, 2, 3];
ar2 = [3, 1, 2];
console.log('(1, 1, 2, 3) == (3, 1, 2): ', sets_identical(ar1, ar2));

function set_union(ar1, ar2) {
	var i, temp = [], ret = [];
	for (i = 0; i < ar1.length; ++i) {
		temp[ar1[i]] = 1;
	}
	for (i = 0; i < ar2.length; ++i) {
		temp[ar2[i]] = 1;
	}
	for (var value in temp) {
		ret.push(value);
	}
	return ret;
}

function set_intersection(ar1, ar2) {
	var i, temp = [], ret = [];
	for (i = 0; i < ar1.length; ++i) {
		temp[ar1[i]] = 0;
	}
	for (i = 0; i < ar2.length; ++i) {
		++temp[ar2[i]];
	}
	for (var value in temp) {
		if (temp[value] === 1) ret.push(value);
	}
	return ret;
}

function set_difference(ar1, ar2) {
	var i, temp = [], ret = [];
	for (i = 0; i < ar1.length; ++i) {
		temp[ar1[i]] = 0;
	}
	for (i = 0; i < ar2.length; ++i) {
		temp[ar2[i]] === 0 ? ++temp[ar2[i]] : temp[ar2[i]] = 0;
	}
	for (var value in temp) {
		if (temp[value] === 0) ret.push(value);
	}
	return ret;
}

function sets_identical(ar1, ar2) {
	var i, temp = [], ret = [];
	for (i = 0; i < ar1.length; ++i) {
		temp[ar1[i]] = 0;
	}
	for (i = 0; i < ar2.length; ++i) {
		++temp[ar2[i]];
	}
	for (var value in temp) {
		if (temp[value] !== 1) return false;
	}
	return true;
}