
def convert_to_hash(array_to_convert)

  array_to_convert.each do |key_value|
      if key_value.length == 2
        new_hash[key_value.first] = key_value.last
      elsif key_value.length == 1
        new_hash[key_value.first] = nil
      elsif key_value.length > 2
        last_index = key_value.length - 1
        new_hash[key_value.first] = key_value[1..last_index]
      end
    end
    return new_hash
end

sub_array1 = ["a", "b", "c"]
sub_array2 = [1, 2, 3]
sub_array3 = ["I", "II", "III"]

large_array1 = [sub_array1]
large_array2 = [sub_array1, sub_array2]
large_array3 = [sub_array1, sub_array2, sub_array3]

convert_to_hash(large_array1)
puts "~" * 20
convert_to_hash(large_array2)
puts "~" * 20
convert_to_hash(large_array3)
