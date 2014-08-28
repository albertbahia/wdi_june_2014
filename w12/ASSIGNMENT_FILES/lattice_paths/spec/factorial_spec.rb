require_relative '../lattice_path.rb'

describe 'factorial' do 
  it 'works for 0' do 
    expect(factorial(0)).to eq(1)
  end

  it 'works for 1' do 
    expect(factorial(1)).to eq(1)
  end

  it 'works for 5' do 
    expect(factorial(5)).to eq(120)
  end
end