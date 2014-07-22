require_relative '../lib/reverser'

describe '#reverser' do

  it 'works for strings' do
    expect(reverser('hello')).to eq('olleh')
  end

  it 'works for multi word strings' do
    expect(reverser('hello world')).to eq('olleh dlrow')
  end
end
