#
# # fibonacci_array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
#
# def sum_of_even_fibonaccis(num)
#
#   fibonacci_array = [f1, f2, ]
#
#   even_nums = fibonacci_array.select { |num| num.even? }
#   even_nums
# end

# McK's solution:

require 'pry'

def sum_of_even_fibonaccis(limit)
  holder = [1, 2]

  while (holder[-1] + holder[-2]) < limit
    holder << holder[-1] + holder[-2]
    puts holder[-1]
  end
  return holder.select { |num| num.even? }.reduce(:+)
end

binding.pry

# holder = [1, 2] <<
# Passing a neg index value to an array >> begins from the end of the array

# .even? << name of method; the ? will return a Boolean value
