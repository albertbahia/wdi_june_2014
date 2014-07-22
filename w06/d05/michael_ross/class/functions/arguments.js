function printArgs(a, b) {
  console.log(a);
  console.log(b);
}

// This one has too many arguments
printArts('hey', 'hello', 'hi', 'yo', 42, false);

// This one has too few arguments
printArts('what up');

// This one is just right
printArgs('hey', 'hello');
