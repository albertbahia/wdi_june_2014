#require 'pry'

def rejector(num_array)
  new_array = num_array.map { |num| num.to_i }
  new_array.reject do |new_num| new_num % 2 == 1
end
.inject(:+)
end


#array_nums = ['1', '2', '3', '4', '5', '6']

# def rejector(array_vals)
#   array_vals.reject{|element| element.to_i % 2 == 1}
#   .map {|string| string.to_i}
#   .reduce(:+)
# end
