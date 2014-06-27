def sum_of_even_fibonaccis(limit)
  f_array = [1, 2]
  while (f_array[-1] + f_array[-2] < limit)
    f_array << (f_array[-1] + f_array[-2])
  end
  f_array.select! {|fibnum| fibnum % 2 == 0}.inject(:+)
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
