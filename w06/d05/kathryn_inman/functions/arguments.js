function printArgs(a, b) {
	console.log(a);
	console.log(b);
}

// too many args -> JS ignores the last two
printArgs("hey", "hello", "sup", "bae")

// juuuuuuust right
printArgs("hey", "hello")

// too few args -> JS returns undefined where it would have b
printArgs("hey")