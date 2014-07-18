# def sum_of_even_fibonaccis(n)
#   return n if n <= 1
#   sum_of_even_fibonaccis(n-1)+ sum_of_even_fibonaccis(n-2)
# end

def sum_of_even_fibonaccis(limit)

  holder = [1,2]

  while ( holder[-1] + holder[-2] ) < limit
    holder << holder[-1] + holder[-2]
  end

  return holder.select { |n| n.even? }.reduce(:+)

end

def sum_of_even_fibonacci(limit)
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


var numArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


function fibo(n) {
  var f = [];
  for (var c = 0; c < n; ++c) {
    f.push((c < 2) ? c : f[c-1] + f[c-2]);
  }
  return f;
}
