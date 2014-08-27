require_relative '../lattice_path.rb'

describe 'find_row' do 
  it 'works for 0' do 
    expect(find_row(0)).to eq([1])
  end

  it 'works for 1' do 
    expect(find_row(1)).to eq([1,1])
  end

  it 'works for 3' do 
    expect(find_row(3)).to eq([1,3,3,1])
  end

  it 'works for 4' do 
    expect(find_row(4)).to eq([1,4,6,4,1])
  end
end