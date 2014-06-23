

# describe '#to_hash' do
#   it 'works for a single element array' do
#     array_to_convert = [['apple']]
#     expect(convert_to_hash(array_to_convert)).to eq({'apple'=> nil})
#   end

# it 'works for a two element array' do
#   array_to_convert = [['apple', 'pie'],['swag', 'surf'],['poop']]
#   expect(convert_to_hash(array_to_convert)).to eq({'apple' => 'pie', 'swag' => 'surf', 'poop' => nil})
# end
#
# it 'works for a multi element array' do
#   array_to_convert = [['apple','pie'],['swag','surf'],['one', 'two', 'three and to the', 'four']]
#   expect(convert_to_hash(array_to_convert)).to eq({'apple' => 'pie', 'swag' => 'surf', 'one' => ['two', 'three and to the', 'four']})
# end
# end


# 1_element_array = ["apple"]

  # {"apple" => nil}

# 2_element_array = [{"apple" => "pie"}, {"swag" => "surf"}]
# 3_or_more_array = [{"apple" => "pie"}, {"swag" => "surf"}, {"one" => "two"}, ]

##### My version:
# def to_hash do
#   array.count
#
#   if array.count == 1
#     #return hash where {index0 => nil}
#
#   elsif array.count == 2
#     #if an array contains 2 elements
#     #return hash where {{index0 => index1}}

#   elsif array.count >= 3
#     #if an array countains 3 or more elements
#     #return hash where {index0 => [index1, index2, index3]}
#
#
# end
########## Solution: ##############

def convert_to_hash(array_to_convert)
  new_hash = {}

  array_to_convert.each do |key_value|

    if key_value.length == 2
      new_hash[key_value.first] = key_value.last
    elsif key_value.length == 1
      new_hash[key_value.first] = nil
    elsif key_value.length > 2
      #last_index = key_value.length - 1
      #new_hash[key_value.first] = key_value[1..last_index]
      new_hash[key_value.first] = key_value[1..-1]
      end
    end
    return new_hash
end
