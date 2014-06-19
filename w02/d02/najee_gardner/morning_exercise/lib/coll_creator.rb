def convert_to_hash(array)
  new_hash = Hash.new

  array.each do |n_array|
    if n_array.count > 2
      new_hash[n_array.first] = n_array[1..-1]
    elsif n_array.count == 2
      new_hash [n_array.first] = n_array.last
    elsif n_array.count == 1
      new_hash[n_array.first] = nil
    end
  end

  # array_to_convert.each do |key_value|
  #   if key_value.length == 2
  #     new_hash[key_value.first] = key_value.last
  #   elsif key_value.length == 1
  #     new_hash[key_value.first] = nil
  #   elsif key_value.length > 2
  #     new_hash[key_value.first] = key_value[1..-1]
  #   end
  # end

  new_hash
end
