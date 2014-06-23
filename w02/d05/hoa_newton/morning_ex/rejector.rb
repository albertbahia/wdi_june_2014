
# num_array = [1, 2, 5, 6, "56", "7"]

def rejector(num_array)
	converted_num = num_array.map do |num|
		num.to_i
	end
	even_num = converted_num.reject do |n|
		n % 2 != 0
	end
	return even_num.reduce(:+)
end
