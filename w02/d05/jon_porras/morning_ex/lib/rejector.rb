def rejector(arr)
  arr.map{|num| num.to_i}.reject{|num| num % 2 != 0}.reduce(:+)
end
