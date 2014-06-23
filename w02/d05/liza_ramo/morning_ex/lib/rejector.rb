
# Define a method that given an array of numbers and stringified numbers will return the
# sum of all even numbers in the array. Your method should utilize the `reject` method.


##### McKenneth's solution ########

def (array_of_values)
  array_of_values.reject {|string| string.to_i %2 == 1 }.map
  { |string| string.to_i}.reduce(:+)

end

###### My solution #####

def rejector(num_array)
  num_array.reject {|number| number.to_i % 2 != 0}
  .map {|number| number.to_i}.reduce(:+)
end

##### Najee's solution  ##########

def rejector(num_array)
  num_array.reject { |number| number.to_i.odd? }
  .reduce(0) { |sum, n| sum + n.to_i }
end


# .reject
# .reduce
# .to_i
