require_relative '../lib/ordinator.rb'

describe '#ordinator' do
  it 'returns 1st for 1' do
    expect(ordinator(1)).to eq('1st')
  end

  it 'returns 2nd for 2' do
    expect(ordinator(2)).to eq('2nd')
  end

  it 'returns 3rd for 3' do
    expect(ordinator(3)).to eq('3rd')
  end

  it 'returns 4th for 4' do
    expect(ordinator(4)).to eq('4th')
  end

  it 'returns 6th for 6' do
    expect(ordinator(6)).to eq('6th')
  end

  it 'returns 0th for 0' do
    expect(ordinator(0)).to eq('0th')
  end

  it 'returns 21st for 21' do
    expect(ordinator(21)).to eq('21st')
  end

  it 'returns 22nd for 22' do
    expect(ordinator(22)).to eq('22nd')
  end

  it 'returns 23rd for 23' do
    expect(ordinator(23)).to eq('23rd')
  end

  it 'returns 24th for 24' do
    expect(ordinator(24)).to eq('24th')
  end

  xit '11, 12, 13'

  it 'returns 31st for 31' do
    expect(ordinator(31)).to eq('31st')
  end

  it 'returns 32nd for 32' do
  end

  it 'returns 33rd for 33' do
  end

end
