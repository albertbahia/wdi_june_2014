require_relative '../lattice_path.rb'

describe 'lattice_path' do 
  it 'works for a 2x2 grid' do 
    expect(lattice_path(2)).to eq(6)
  end

  it 'works for 5x5 grid' do
    expect(lattice_path(5)).to eq(252)
  end
end