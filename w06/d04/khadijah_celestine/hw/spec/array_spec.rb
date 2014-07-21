require 'spec_helper'

describe Array do
  subject(:arr) { [1,2,3,4,5,6] }
  it ' k_find works like Array.find_index ' do
    expect(arr.k_find(3)).to eq(arr.find(3))
  end
end
