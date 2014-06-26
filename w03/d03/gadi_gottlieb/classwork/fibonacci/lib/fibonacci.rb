require 'pry'

def sum_of_even_fibonaccis(limit)
  holder = [1, 2]

  while (holder[-1] + holder[-2]) < limit
    holder << holder[-1] + holder[-2] # only concerned with the last one, and the second to last one.
  end                                 # we then add those two numbers together in order to get our Fibonacci numbers
  return holder.select { |num| num.even?}.reduce(:+)
end

binding.pry
