def sum_of_even_fibonaccis(num)

  # f1 = 1
  # f2 = 1
  # even_nums = []
  #
  # while f1 + f2 < num
  #   f2_temp = f1 + f2
  #   f1 = f2
  #   f2 = f2_temp
  #
  #   even_nums << f2 if f2.even?
  # end
  #
  # even_nums.reduce(:+)

  #mck solution
  holder = [1, 2]

  while (holder[-1] + holder[-2]) < num
    holder << holder[-1] + holder[-2]
  end
  holder.select { |num| num.even? }.reduce(:+)

  # (1..num).each do |num|
  #   even_n
  # end
end
