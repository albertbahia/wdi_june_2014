#recursion
def factorial(n)
  return 1 if n == 1
  n * factorial(n - 1)
end

# tail recursion
def factorial(n, current_factorial = 1)
  return current_factorial if n == 1
  factorial(n - 1, current_factorial * n)
end
