require_relative '../lib/selector'

describe '#selector' do

  it 'works for numbers below 10' do
    expect(selector(10)).to eq(23)
  end

  it 'works for numbers below 20' do
    expect(selector(20)).to eq(78)
  end

  it 'works for numbers below 20' do
    expect(selector(20)).to eq(78)
  end

end
