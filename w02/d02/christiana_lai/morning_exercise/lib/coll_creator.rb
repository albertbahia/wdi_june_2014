# class CollCreator
# if testing one method, do not need class

def convert_to_hash(array_to_convert)
  new_hash = {}

  array_to_convert.each do |key_value|
    if key_value.length == 2
      new_hash[key_value.first] = key_value.last
    elsif key_value.length == 1
      new_hash[key_value.first] = nil
    elsif key_value.length > 2
      # last_index = key_value.length - 1
      # new_hash[key_value.first] = key_value[1..last_index]
      new_hash[key_value.first] = key_value[1..-1]
    end
  end
  return new_hash
end
