function factorial(n) {
  if (n === 1) {
    return 1;
  }

  return n * factorial(n - 1);
}

// -------ruby----------
// def factorial(n)
//   # return 1 if n == 1
//   n * factorial(n - 1)
// end


// tail recursion example
function factorial(n, currentFactorial) {
  currentFactorial = currentFactorial || 1;

  if (n === 1) {
    return currentFactorial;
  }

  return factorial(n - 1, currentFactorial * n);
}

// -----------ruby--------------
// def factorial(n, current_factorial = 1)
//   return current_factorial if n == 1
//   return factorial(n - 1, current_factorial * n)
// end
