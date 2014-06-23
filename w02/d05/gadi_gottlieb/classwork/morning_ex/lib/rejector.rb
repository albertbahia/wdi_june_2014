def rejector(num_array)
  num_array.reject { |num| num.to_i % 2 == 1 }.map{ |string| string.to_i}.reduce(:+)
end


# McKenneth's Solution

# def rejector(array_of_values)
#   array_of_values.reject{ |string| string.to_i % 2 == 1 } # the reject method rejects all odd numbers
#   .map { |string| string.to_i} # the .map is needed to save the integered string into an array and stores all values into a new array.
#   .reduce(:+) # .reduce adds all values that were stored in the .map created array!
# end












  # if num_array = [1,2,3,4,5,6] do
  #   even_numbers = num_array.reject { |num| num % 2 == 1 }.reduce(:+)
  # elsif num_array = ["1","2","3","4","5","6"]
  #   even_numbers = num_array.reject { |num| num % 2 == 1 }.reduce(:+)
  # else num_array = ["1",2,3,"4",5,"6"]
  #   even_numbers = num_array.reject { |num| num % 2 == 1 }.reduce(:+)
  # end
