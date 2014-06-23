require_relative '../lib/building.rb'
require_relative '../lib/apartment.rb'
require_relative '../lib/tenant.rb'

describe Building do
  subject(:building) { Building.new("HAMco Towers", "41 USW NY,NY", 5)}
  subject(:apartment) { Apartment.new("1A",1,1200,2000,1,2)}
  let(:tenant_1) { Tenant.new("Joe", 25, "Male") }
  let(:tenant_2) { Tenant.new("Joe", 25, "Male") }
  it 'has a name' do
    expect(building.name).to_not be_nil
    expect(building.name).to eq("HAMco Towers")
  end

  it 'has an address' do
    expect(building.address).to_not be_nil
    expect(building.address).to eq("41 USW NY,NY")
  end

  it 'has a number of floors' do
    expect(building.floors).to_not be_nil
    expect(building.floors).to eq(5)
  end

  it 'has apartments' do
    expect(building.apartments).to_not be_nil
  end

  describe '#list_apartments' do
    it 'returns information about the apartment' do
      expect(building.list_apartments).to eq("1A",1,1200,2000,1,2)
    end
  end

  describe '#rent_apartment' do
    it 'rents an apartment to a tenant' do
      expect(building.rent_apartment("1A",1,1200,2000,1,2)).to include("1A", 1, 1200, 2000, 1, 2)
    end
    it 'does not rent an apartment that is full' do
    end
  end
end
