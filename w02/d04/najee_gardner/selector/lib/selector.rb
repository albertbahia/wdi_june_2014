def selector(limit)
  div_3_5 = (1...limit).select {|num| num % 3 == 0 || num % 5 == 0}
  div_3_5.inject(0) {|sum, num| sum + num}
end
