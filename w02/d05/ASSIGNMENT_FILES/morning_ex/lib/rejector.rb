def rejector(array_of_values)
  array_of_values.reject{ |string| string.to_i % 2 == 1 }
  .map { |string| string.to_i}
  .reduce(:+)
end

def rejector(array_of_values)
  array_of_values.reject { |string| string.to_i.odd? }
  .reduce(0) { |sum, n| sum + n.to_i }
end

# def rejector(array)
#   array.map {|num| num.to_i.even? ? num.to_i : 0 }
#   .reduce(:+)
# end
