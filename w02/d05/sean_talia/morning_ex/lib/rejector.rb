
def rejector(array)
  array.map{ |string| string.to_i }.reject{ |num| num.odd? }.reduce(:+)
end
