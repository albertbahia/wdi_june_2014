def selector(limit)
	(1...limit).select {|number| number%3 == 0 || number%5 == 0}.reduce(:+)
end

