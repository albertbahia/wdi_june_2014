require_relative './spec_helper'
require_relative './collection'

describe '#to_hash' do
  it 'works for a single element array' do
    array_to_convert = [['apple']]
    expect(convert_to_hash(array_to_convert)).to eq({'apple'=> nil})
  end

  it 'works for a two element array' do
    array_to_convert = [['apple', 'pie'],['swag', 'surf'],['poop']]
    expect(convert_to_hash(array_to_convert)).to eq({'apple' => 'pie', 'swag' => 'surf', 'poop' => nil})
  end

  it 'works for a multi element array' do
    array_to_convert = [['apple','pie'],['swag','surf'],['one', 'two', 'three and to the', 'four']]
    expect(convert_to_hash(array_to_convert)).to eq({'apple' => 'pie', 'swag' => 'surf', 'one' => ['two', 'three and to the', 'four']})
  end
end

# Instructions:
# Morning Exercise 02-02
#
# #### Learning Objectives
#
# - Practice utilizing with nested collections
# - Practice using ruby array methods
# - Practice writing methods
#
# # Hash me baby, one more time
#
# Define a method that will accept an array of nested arrays and return a hash.
#
# For a :
# - __2-element array__
#   - The first element of each array should be the key, the second element should be the value.
#
# - __1-element array__
#   - The first element should be the key, the value should be set to nil
#
# - __3 or more element array__
#   - The first element should be the key, the value should be an array with all of the remaining elements.
#
#
# __Do NOT use the `to_h` method__
#
