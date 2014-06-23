
def selector(end_number)
	(1...end_number).select { |number| number % 3 == 0 || number % 5 == 0 }
	.reduce(:+)
end 