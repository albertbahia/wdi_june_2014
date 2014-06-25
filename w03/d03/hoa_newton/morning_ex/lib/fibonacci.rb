require 'pry'

def sum_of_even_fibonaccis(limit)
	holder = [1, 2]
	while (holder[-1] + holder[-2]) < limit
		holder << holder[-1] + holder[-2]
	end
	return holder.select{ |num| num.even? }.reduce(:+)
end

def sum_of_even_fibonaccis(limit)
	num = 1
	adder =2
	holder = 0
	total = 0
	while adder < limit
		total += adder if holder.even?
		holder = num + adder
		num = adder
		adder = holder
		return total if adder > limit
	end
	return total
end


# def fibonacci( n )
#     return  n  if n <= 1 
#     fibonacci( n - 1 ) + fibonacci( n - 2 )
# end 

# def sum_of_even_fibonaccis(fibonacci(num))
# 	if num <= 1
# 		return n
# 	elsif fibonacci( num - 1 ) % 2 == 0 
# 		 finonacci( n - 1 )
# 	elsif fibonacci( n - 2 ) % 2 == 0
# 		fibonacci( n - 2 )
# 	end
# end

# binding.pry
