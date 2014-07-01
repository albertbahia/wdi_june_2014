require_relative '../lib/pair_prog'

describe '#ordinal' do
  it 'works for 1' do
    expect(ordinal(1)).to eq('1st')
  end
  it 'works for 2' do
    expect(ordinal(2)).to eq('2nd')
  end
  it 'works for 3' do
    expect(ordinal(3)).to eq('3rd')
  end
  it 'works for 4' do
    expect(ordinal(4)).to eq('4th')
  end
  it 'works for 10' do
    expect(ordinal(10)).to eq('10th')
  end
  it 'works for 11' do
    expect(ordinal(11)).to eq('11th')
  end
  it 'works for 12' do
    expect(ordinal(12)).to eq('12th')
  end
  it 'works for 19' do
    expect(ordinal(19)).to eq('19th')
  end
  it 'works for 21' do
    expect(ordinal(21)).to eq('21st')
  end
  it 'works for 42' do
    expect(ordinal(42)).to eq('42nd')
  end
  it 'works for 53' do
    expect(ordinal(53)).to eq('53rd')
  end
  it 'works for 101' do
    expect(ordinal(101)).to eq('101st')
  end

end
