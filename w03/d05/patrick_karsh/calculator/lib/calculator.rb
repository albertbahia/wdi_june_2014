class Calculator 
	
		
def add(num1, num2)
	num1.to_i + num2.to_i
end 
def subtract(num1, num2)
	num1.to_i - num2.to_i
end
def sum(array)
	array.reduce(:+) == nil ? 0 : array.reduce(:+) 
end 
def multiply(*num)
	num.reduce(:*)
end 
def power(num, power)
	num ** power
end 
def factorial(limit)
	(1..limit).reduce(:*) || 1  
end  

end
