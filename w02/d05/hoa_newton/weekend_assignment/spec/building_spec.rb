require_relative '../lib/building'
require_relative '../lib/apartment'
require_relative '../lib/tenant'
require 'pry'

describe Building do
  subject(:building) { Building.new("HAMco Towers", "41 USW NY,NY", 5)}
  subject(:apartment) { Apartment.new("1A",1,1200,2000,1,2)}
  let(:tenant_1) { Tenant.new("Joe", 25, "Male") }
  let(:tenant_2) { Tenant.new("Joe", 25, "Male") }
  let(:tenant) { Tenant.new("Jorb", 9000, "Female") }
  let(:tenant_3) { Tenant.new("Snorb", 9001, "Female") }
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
      expect(building.list_apartments).to include(apartment.name, apartment.floor.to_s, apartment.price.to_s, apartment.sqft.to_s, apartment.bedrooms.to_s, apartment.bathrooms.to_s)
      # (building.list_apartments).should include(apartment.name, apartment.floor.to_s, apartment.price.to_s, apartment.sqft.to_s, apartment.bedrooms.to_s, apartment.bathrooms.to_s)
    end
  end

  describe '#rent_apartment' do
    it 'rents an apartment to a tenant' do
      building.apartments.push(apartment)
      expect(building.rent_apartment(apartment,tenant_1)).to eq(apartment.tenants)
    end
    it 'does not rent an apartment that is full' do
      building.apartments.push(apartment)
      building.rent_apartment(apartment, tenant)
      building.rent_apartment(apartment, tenant_1)
      expect(apartment.tenants.count).to eq(apartment.bedrooms)
    end
  end
end
