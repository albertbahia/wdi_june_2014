require_relative '../lib/middle_earth_dweller.rb'
require_relative '../lib/elf.rb'

describe Elf do
  let(:legolas) { Elf.new('Legolas', 'Mirkwood', 'Fangorn') }
  it 'has a name' do
    expect(legolas.name).to eq('Legolas')
  end

  it 'has a hometown' do
    expect(legolas.hometown).to eq('Mirkwood')
  end

  it 'has favorite town' do
    expect(legolas.favorite_town).to eq('Fangorn')
  end

  it 'starts out with flowers sprouted as 0' do
    expect(legolas.flowers_sprouted).to eq(0)
  end

  describe '#beautify' do
    it 'increases gems collected by 1' do
      legolas.beautify
      expect(legolas.flowers_sprouted).to eq(1)
    end
  end

  describe '#pass_over_sea' do
    it 'changes hometown to The West' do
      legolas.pass_over_sea
      expect(legolas.hometown).to eq('The West')
    end
  end

end
