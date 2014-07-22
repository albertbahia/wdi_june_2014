# def rejector(num_array)
#   num_array.reject {|num| num.to_i % 2 == 1 }.reduce(:+)
# end


def rejector(num_array)
  new_num_array = num_array.map { |num| num.to_i }
  new_num_array.reject {|num| num % 2 == 1 }.reduce(:+)
end
