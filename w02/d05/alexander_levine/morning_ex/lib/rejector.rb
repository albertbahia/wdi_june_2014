
def rejector(array)
  num_array = array.map { |num| num.to_i }
  (num_array.reject { |num| num % 2 == 1 }).reduce(:+)
end


# if array[0].class = String


# else
#   (array.reject { |num| num % 2 == 1 }).reduce(:+)
# end
