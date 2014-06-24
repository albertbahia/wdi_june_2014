
def rejector(array)
  converted = array.map {|n| n.to_i}
  even_num = converted.reject { |n| n % 2 != 0}
  return even_num.inject(:+)
end

# def rejector(array)
#   array.reject {|string| string.to_i.odd? }
#   .reduce(0) { |sum, n| sum + n.to_i }
# end
