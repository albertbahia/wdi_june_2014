require_relative 'spec_helper'
<<<<<<< HEAD
<<<<<<< HEAD
require_relative '../lib/d02_morning.rb'
=======
require_relative '../coll_creator.rb'
>>>>>>> def91b4914be09b5d5dd884cf9b5e1e5dd82f595
=======
require_relative '../coll_creator.rb'
>>>>>>> 8d39c7fc70f0aea43cbd77df16707757f24b1f99

describe '#convert_to_hash' do
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
