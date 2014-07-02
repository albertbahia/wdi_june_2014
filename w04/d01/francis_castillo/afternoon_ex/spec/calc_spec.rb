require_relative '../lib/calc'

describe Calc do

  it 'adds one and two' do
    expect(Calc.new.one.plus.two).to eq(3)
  end

end
