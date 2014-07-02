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

  it 'returns 11th for 11' do
    expect(ordinator(11)).to eq('11th')
  end

  it 'returns 12th for 12' do
    expect(ordinator(12)).to eq('12th')
  end

  it 'returns 13th for 13' do
    expect(ordinator(13)).to eq('13th')
  end

  it 'returns 31st for 31' do
    expect(ordinator(31)).to eq('31st')
  end

  it 'returns 32nd for 32' do
    expect(ordinator(32)).to eq('32nd')
  end

  it 'returns 33rd for 33' do
    expect(ordinator(33)).to eq('33rd')
  end

  it 'returns 45th for 45' do
    expect(ordinator(45)).to eq('45th')
  end

  it 'returns 539th for 539' do
    expect(ordinator(539)).to eq('539th')
  end
end
