require_relative '../lib/middle_earth_dweller.rb'

describe MiddleEarthDweller do
  let(:aragorn) { MiddleEarthDweller.new('Aragorn', 'Minas Tirith', 'Lothlorien') }
  it 'has a name' do
    expect(aragorn.name).to eq('Aragorn')
  end

  it 'has a hometown' do
    expect(aragorn.hometown).to eq('Minas Tirith')
  end

  it 'has favorite town' do
    expect(aragorn.favorite_town).to eq('Lothlorien') #initialized to 10 automatically
  end

  describe '#list_stats' do
    it 'displays name, hometown, and favorite town' do
      expect(aragorn.list_stats).to include(aragorn.name)
      expect(aragorn.list_stats).to include(aragorn.hometown)
      expect(aragorn.list_stats).to include(aragorn.favorite_town)
    end
  end

end
