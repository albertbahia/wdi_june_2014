require_relative '../lib/building'
require_relative '../lib/apartment'
require_relative '../lib/tenant'

describe Building do
  subject(:building) { Building.new("HAMco Towers", "41 USW NY,NY", 5)}
  subject(:apartment) { Apartment.new("1A",1,1200,2000,1,2)}
  subject(:apartment2) { Apartment.new("2A", 2, 1500, 3000, 2, 2)}
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
      building.apartments.push(apartment)
      building.apartments.push(apartment2)
      apartment_info = ["1A","Floor 1","$1200","2000 sqft","1 Bedroom","2 Bathroom"]
      apartment_info += ["2A", "Floor 2", "$1500", "3000 sqft", "2 Bedroom", "2 Bathroom"]
      apartment_info.each do |item|
        expect(building.list_apartments).to include(item)
      end
    end
  end

  describe '#rent_apartment' do
    it 'rents an apartment to a tenant' do
      building.apartments.push(apartment)
      building.apartments.push(apartment2)
      building.rent_apartment(tenant_1, "1A")
      expect(building.apartments.first.tenants).to eq([tenant_1])
    end
    it 'does not rent an apartment that is full' do
      building.apartments.push(apartment)
      building.apartments.push(apartment2)
      building.rent_apartment(tenant_1, "1A")
      building.rent_apartment(tenant_2, "1A")
      expect(building.apartments.first.tenants).to eq([tenant_1])
    end
  end
end
