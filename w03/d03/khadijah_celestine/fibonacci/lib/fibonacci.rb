def fibonacci(n)
	if(n == 0)
    return 1
  elsif(n == 1)
    return 2
  else
    return fibonacci(n - 1) + fibonacci(n - 2)
	end
end

def sum_of_even_fibonaccis(n)
	sum = 0
	for nth in [*0..n]
		fib = fibonacci(nth)
		if fib < n
			if fib.even?
				sum += fib
			end
		else 
			break
		end #end check for less than limit
	end #end for
	sum
end #end def

sum_of_even_fibonaccis(5)

