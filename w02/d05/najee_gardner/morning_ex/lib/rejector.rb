def rejector(array)
  array.reject {|n| n.to_i.odd? }.reduce(0) {|sum, n| sum + n.to_i}
end
