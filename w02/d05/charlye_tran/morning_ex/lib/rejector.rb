def rejector(array)
 array.reject { |x| x.to_i.odd? }.map { |x| x.to_i}.reduce(:+)
  # new_array.each do |x|
  #   new_array.push(x.to_i)
  # end
  # puts new_array.reduce(:+)
end
