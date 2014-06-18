
#try this
# def convert_to_hash(array_to_convert)
#   array_to_convert.inject({}) { |array, obj| array[obj.first] = obj.last
#      memo
#   }
# end

def convert_to_hash(array_to_convert)
  #define a hash variable to house the converted array
  new_hash = {}

  array_to_convert.each do |array|
    #checks to see how many indexes there are in the array_to_convert

    #if the array has 2 items (indexes), the last index would be the value of the key
    if array.length == 2
      new_hash[array.first] = array.last
    #if array has one element, nil would be the value of the key
    elsif array.length == 1
      new_hash[array.first] = nil
    elsif array.length > 2
      #-1 represents the last element
      # .. inclusive ... exclusive
      #sets the last elements of the array as the value of the key
      new_hash[array.first] = array[1..-1]
    end
  end

  return new_hash
end
