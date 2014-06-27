# def sum_of_even_fibonaccis(n)
#   sequence = (1..n).map do |num|
#     if num <= 1
#       return num
#     else
#     (num - 1) + (num - 2)
#     end
#   end
#   sequence.select{ |num| num.even? }.inject(:+)
#
# end

#
#
#
# def sum_of_even_fibonaccis(n)
#   array = n.times.each_with_object([0,1]) { |num, obj| obj << obj[-2] + obj[-1] }
#   array.select { |num| num.even? }.inject(:+)
# end


# class

def sum_of_even_fibonaccis(limit)
  holder = [1,2]
  while (holder[-1] + holder[-2]) < limit
      holder << holder[-1] + holder[-2]
  end
  holder.select{ |num| num.even? }.inject(:+)
end
