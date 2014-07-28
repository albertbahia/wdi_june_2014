

def sum_of_even_fibonaccis(limit)
  def fibonacci( n )
    return  n  if n <= 1
    fibonacci( n - 1 ) + fibonacci( n - 2 )
  end
  #create an array of fibonacci numbers up to the limit passes as a parameter
  fibonacci_array =
  even_fibonaccis = fibonacci_array.select { |num| num.even? }
  sum_of_even_fibonaccis =
end


  def fibonacci(3)
    n = 0
    l = limit
    while n < l do
      seq = n + (n-1)
  end
