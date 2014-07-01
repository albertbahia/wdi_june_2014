require 'pry'
def sum_of_even_fibonaccis(num)
  # num_arr = (1..num).flat_map {|x| [x]}
  num_arr = [1,2]

  num_arr.select { |fib| fib == fib[] + (fib - 1)
  }
  return fib_num_arr
end

#method 2
# def sum_of_even_fibonaccis(num)
#   num_arr = [1,2]
#
#   while (num_arr[-1] + num_arr[-2]) < num
#     num_arr << num_arr[-1] + num_arr[-2]
#   end
#   return num_arr.select {|ev_num| ev_num.even? }.reduce(:+)
# end

#method 3
# def sum_of_even_fibonaccis(limit)
#   num = 1
#   adder = 2
#   holder = 0
#   total = 0
#
#   while adder < limit
#     total += adder if holder.even?
#     holder = num + adder
#     num = adder
#     adder = holder
#     return total if adder > limit
#   end
#   return total
# end
binding.pry
