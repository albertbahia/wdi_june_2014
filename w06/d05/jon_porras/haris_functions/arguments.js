function printArgs(a, b) {
  console.log(a);
  console.log(b);
}

// This one has too many arguments
printArgs('hey', 'hello', 'hi', 'yo', 42, false);

// This one has too few arguments
printArgs('what up');

// This one is juuuuuust right
printArgs('hey', 'hello');
