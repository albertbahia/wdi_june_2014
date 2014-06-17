require_relative 'spec_helper'
require_relative '../lib/d02_morning.rb'

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
