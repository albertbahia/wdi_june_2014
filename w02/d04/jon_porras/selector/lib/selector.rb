# def selector(num)
#
#   num_arr = []
#   mult_arr = []
#   final_output=0
#
#   all_numbers = for i in (1..num-1) do num_arr.push(i) end
#
#   mult_arr = num_arr.select do |number|
#       if (number % 5 == 0) || (number % 3 == 0)
#           mult_arr.push(number)
#         end
#     end
#
#      mult_arr.each do |number|
#        final_output += number
#      end
#
#      return final_output
# end

def selector(limit)
  (1...limit).select { |num| num % 3 == 0 || num % 5 == 0 }
  .reduce(:+)
end
