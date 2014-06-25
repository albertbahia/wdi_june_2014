


def rejector(num_array)
  num_array.reject { |string| string.to_i % 2 == 1 }
  .map { |string| string.to_i }.reduce(:+)
end

#it's important that the .map is on the second line here because the curly brace string
# cannot begin a line on its own

# or can be written like so
#
# def rejector(num_array)
#   num_array.reject { |string| string.to_i.odd? }.reduce(0) { |sum, num| sum += num.to_i }
# end
