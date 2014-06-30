class Calculator 

	def add(a, b)
		# if a > 0 && b > 0
			return a + b
		# end	
	end

	def subtract(x, y)
		x - y
	end

	def sum(arr)
		arr.length == 0? 0 : arr.reduce(:+)
		arr.reduce(0, :+)
	end

	def multiply(*num)
		return num.reduce(:*)
	end

	def factorial(num)
		# if num == 0 || num == 1
		# 	return 1
		# else
		# 	(1..num).reduce(:*)
		# end
		num == 0? 1 : (1..num).reduce(:*)
	end

	def power(x, y)
		#x**y
		if y == 0 
			return 1
		else
			x*power(x, y-1)
		end
	end

end