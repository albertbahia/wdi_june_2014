require_relative '../lib/rejector'


describe '#rejector' do

  it 'works for numbers' do
    num_array = [1,2,3,4,5,6]
    expect(rejector(num_array)).to eq(12)
  end

  it 'works for stringified numbers' do
    num_array = ["1","2","3","4","5","6"]
    expect(rejector(num_array)).to eq(12)
  end

  it 'works for an array of numbers and stringified numbers' do
    num_array = ["1",2,3,"4",5,"6"]
    expect(rejector(num_array)).to eq(12)
  end

end
