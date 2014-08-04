def rejector(array_of_values)
  array_of_values.reject {|string| string.to_i % 2 == 1}.map {|string| string.to_i}
  .reduce(:+)
end

end
#
#
# def selector(limit)
#   (1...limit).select { |num| num % 3 == 0  || num % 5 == 0 }
#   .reduce(:+)
# end
