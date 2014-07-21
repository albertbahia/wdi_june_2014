function printArgs(a, b) {
  console.log(a);
  console.log(b);
}

// RIGHT AMOUNT OF ARGUMENTS
printArgs('hey', 'hello');

// TOO MANY ARGUMENTS
// --  if we pass it too many arguments, it just ignores the rest
// -- does not complain
printArgs('hey', 'hello', 'hi', 'yo', 42, false);

// TOO FEW ARGUMENTS
// -- returns an undefined for the rest
printArgs('hey');
