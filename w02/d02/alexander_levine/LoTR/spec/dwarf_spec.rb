require_relative '../lib/middle_earth_dweller.rb'
require_relative '../lib/dwarf.rb'

describe Dwarf do
  let(:gimli) { Dwarf.new('Gimli', 'Erebor', 'Glittering Caves') }
  it 'has a name' do
    expect(gimli.name).to eq('Gimli')
  end

  it 'has a hometown' do
    expect(gimli.hometown).to eq('Erebor')
  end

  it 'has favorite town' do
    expect(gimli.favorite_town).to eq('Glittering Caves')
  end

  it 'starts out with gems collected as 0' do
    expect(gimli.gems_collected).to eq(0)
  end

  describe '#collect_gem' do
    it 'increases gems collected by 1' do
      gimli.collect_gem
      expect(gimli.gems_collected).to eq(1)
    end
  end

  describe '#change_hometown' do
    it 'changes hometown' do
      gimli.change_hometown('Rivendel')
      expect(gimli.hometown).to eq('Rivendel')
    end
  end

end
