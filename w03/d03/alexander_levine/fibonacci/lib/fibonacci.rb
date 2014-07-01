def sum_of_even_fibonaccis(num)
  array = [1, 2]
  (3..num).each do |n|
    array.push(n) if n < num &&
    array.last + array[-2] = n
  end
  return array
  # array.select! { |num| num % 2 == 0 }
  # array.inject(:+)
end

# def sum_of_even_fibonaccis(num)
#   holder = [1,2]
#
#   while (holder[-1] + holder[-2]) < num
#     holder << holder[-1] + holder[-2]
#   end
#   return holder.select { |num| num.even? }.inject(:+)
# end
