
def rejector(array_of_values)
	array_of_values.reject { |number| number.to_i % 2 == 1 }
	.map {|number| number.to_i}
	.reduce(:+)
end 
