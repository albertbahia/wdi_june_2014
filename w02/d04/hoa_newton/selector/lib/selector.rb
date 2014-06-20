
def selector(num)
	mul = (1...num).select{ |n| n % 3 == 0 || n % 5 == 0 || n % 6 == 0 || n % 9 == 0}
	mul.reduce(:+)
end


