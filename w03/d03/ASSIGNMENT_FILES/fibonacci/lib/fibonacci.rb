require 'pry'
def sum_of_even_fibonaccis(limit)
  holder = [1,2]
  
  while (holder[-1] + holder[-2]) < limit
    holder.push(holder[-1] + holder[-2])
    puts holder[-1]
  end
  return holder.select { |num| num.even? }.reduce(:+)
end

def sum_of_even_fibonaccis(limit)
  num = 1
  adder = 2
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

def sum_of_even_fibonaccis(limit)
  holder = (1...limit).select do |num| Math.sqrt(5*(num**2)+4).to_i == Math.sqrt(5*(num**2)+4) || Math.sqrt(5*(num**2)-4).to_i == Math.sqrt(5*(num**2)-4)
  end
  holder.select { |num| num.even? }.reduce(:+) 
end