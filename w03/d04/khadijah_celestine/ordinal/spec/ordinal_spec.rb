require_relative '../lib/ordinal'

describe '#ordinal' do
  it 'works for one' do
    expect(ordinal(1)).to eq('1st')
  end
  it 'works for two' do
    expect(ordinal(2)).to eq('2nd')
  end
  it 'works for three' do
    expect(ordinal(3)).to eq('3rd')
  end
  it 'works for four' do
    expect(ordinal(4)).to eq('4th')
  end
  it 'works for 10' do
    expect(ordinal(10)).to eq('10th')
  end
  it 'works for 13' do
    expect(ordinal(21)).to eq('21st')
  end
  it 'works for 22' do
    expect(ordinal(22)).to eq('22nd')
  end
end
