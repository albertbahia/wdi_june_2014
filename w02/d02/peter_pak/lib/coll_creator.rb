
  #
  # def convert_to_hash(array_to_convert)
  #   converted_hash = Hash[array_to_convert.map {|key, value| [key, value] } ]
  # end


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
          #REFACTORED TO --
      new_hash[key_value.first] = key_value[1..-1]
      end
    end
    return new_hash
  end
