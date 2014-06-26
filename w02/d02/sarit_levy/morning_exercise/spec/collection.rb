def convert_to_hash(array_to_convert)
  new_hash = {}

  # array_to_convert.each do |key_value|  #this is the first method to resolve the first problem
  #   new_hash[key_value.first] = nil
  # end
  # return new_hash

  #then for the second problem, the method becomes:

  array_to_convert.each do |key_value|  #this is the first method to resolve the first problem
    if key_value.length == 2  #.length is length of array or where the value we need sits in the array
      new_hash[key_value.first] = key_value.last
    elsif key_value.length == 1
      new_hash[key_value.first] = nil
    elsif key_value.length > 2
      last_index = key_value.length - 1
      new_hash[key_value.first] = key_value[1..last_index]
    #or for last sentence can write this without writing and using the previous last_index def:
    #new_hash[key_value.first] = key_value[1..-1]
    end
    end
    return new_hash

end
