require_relative('../lib/computers.rb')

describe Laptop do
  let(:apple) { Laptop.do(true, true, 'Mac') }
  it 'has a keyboard' do
    expect(apple.keyboard).to eq(true)
  end

  it 'has ports' do
    expect(apple.ports).to eq(true)
  end

  it 'has an OS' do
    expect(apple.os).to eq('Mac')
  end

  describe '#turns_off' do
    expect(apple.on).to
  end
end

describe Desktop do
  let(:pc) { Desktop.do(true, true, 'Windows') }
  it 'has a keyboard' do
    expect(pc.keyboard).to eq(true)
  end

  it 'has ports' do
    expect(pc.ports).to eq(true)
  end

  it 'has an OS' do
    expect(pc.os).to eq('Windows')
  end

  describe '#turns_on' do
    expect(pc.turns_on).to
  end
end
