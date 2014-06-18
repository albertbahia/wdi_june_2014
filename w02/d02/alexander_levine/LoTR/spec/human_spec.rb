require_relative '../lib/middle_earth_dweller.rb'
require_relative '../lib/human.rb'

describe Human do
  let(:aragorn) { Human.new('Aragorn', 'Minas Tirith', 'Lothlorien') }
  it 'has a name' do
    expect(aragorn.name).to eq('Aragorn')
  end

  it 'has a hometown' do
    expect(aragorn.hometown).to eq('Minas Tirith')
  end

  it 'has favorite town' do
    expect(aragorn.favorite_town).to eq('Lothlorien') #initialized to 10 automatically
  end

  it 'starts out with towers built as 0' do
    expect(aragorn.towers_built).to eq(0)
  end

  describe '#build_tower' do
    it 'increases towers built by 1' do
      aragorn.build_tower
      expect(aragorn.towers_built).to eq(1)
    end
  end

  describe '#change_favorite_town' do
    it 'changes favorite_town' do
      aragorn.change_favorite_town('Rivendel')
      expect(aragorn.favorite_town).to eq('Rivendel')
    end
  end

end
