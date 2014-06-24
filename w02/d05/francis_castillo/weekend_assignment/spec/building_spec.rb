require_relative '../lib/building'
require_relative '../lib/apartment'
require_relative '../lib/tenant'

describe Building do
  subject(:building) { Building.new("HAMco Towers", "41 USW NY,NY", 5)}
  subject(:apartment) { Apartment.new("1A",1,1200,2000,1,2)}
  let(:tenant_1) { Tenant.new("Joe", 25, "Male") }
  let(:tenant_2) { Tenant.new("Sam", 27, "Female") }
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

  describe '#list_apartment_info' do
    subject(:building) { Building.new("HAMco Towers", "41 USW NY,NY", 5)}
    subject(:apartment) { Apartment.new("1A",1,1200,2000,1,2)}
    it 'returns information about the apartment' do
    building.add_apartment(apartment.list_apt_info)
    expect(building.list_apartment_info).to include("1A")
    expect(building.list_apartment_info).to include("1")
    expect(building.list_apartment_info).to include("$1200")
    expect(building.list_apartment_info).to include("2000")
    expect(building.list_apartment_info).to include("1")
    expect(building.list_apartment_info).to include("2")
    end
  end

  describe '#rent_apartment' do
    xit 'rents an apartment to a tenant' do
    end
    xit 'does not rent an apartment that is full' do
    end
  end
end
