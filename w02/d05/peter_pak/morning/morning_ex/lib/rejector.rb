#my answer
def rejector(num_array)
  num_array.map(&:to_i).reject { |num| num.odd? }.inject(:+)
end

#### num_array.map(&:to_i)  --  maps each element in the array and converts to integer
#### .reject { |num| num.odd? }.inject(:+)  --  rejects all (num) that are odd then adds each up



#class answer
def rejector(array_of_values)
  array_of_values.reject{ |string| string.to_i % 2 == 1 }
  .map { |string| string.to_i}.reduce(:+)
end


#najee answer
def rejector(array_of_values)
  array_of_values.reject { |string| string.to_i.odd?}
  .reduce(0) { |sum, n| sum + n.to_i }
end
