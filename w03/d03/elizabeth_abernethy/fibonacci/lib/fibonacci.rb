require 'pry'

# fibonacci = [ 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 ]

# N(x) = N(x-1) + N(x-2)
# N > 4000000

# even + odd = odd
# odd + odd = even
# --- odd even odd odd even odd odd even odd

def sum_of_even_fibonaccis(limit)
  # Fibonacci sequence starts with 1,2
  holder = [1,2]

  # Adding the last 2 elements of the array together
  while (holder[-1] + holder[-2]) < limit
    # Push the sum of the last 2 numbers into the existing array
    holder << holder[-1] + holder[-2]
    # Repeat the while loop
  end
  # Return the array, but select only the even numbers and add them together
  return holder.select { |num| num.even? }.reduce(:+)
end



binding.pry

=begin


----- Another solution
a + b = c
reset a to equal b :: a = b
reset b to equal c :: b = c
loop

a = num
b = 
c =

def sum_of_even_fibonaccis(limit)
  num = 1
  adder = 2
  holder = 0
  total = 0
  while adder < limit
    total += adder if holder.even?
    holder = num + adder
    num = adder
    adder = holder
    return total if adder > limit
  end
  return total
end


=end
