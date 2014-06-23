require_relative '../lib/building'
require_relative '../lib/apartment'
require_relative '../lib/tenant'

describe Building do
  subject(:building) { Building.new("HAMco Towers", "41 USW NY,NY", 5)}
  subject(:apartment) { Apartment.new("1A",1,1200,2000,1,2)}
  let(:tenant_1) { Tenant.new("Joe", 25, "Male") }
  let(:tenant_2) { Tenant.new("Joe", 25, "Male") }
  let(:tenant_3) { Tenant.new("Joe", 25, "Male") }
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
    it 'returns information about the apartments' do
      building.apartments.push(apartment)
      expect(building.list_apartments).to include("1A")
      expect(building.list_apartments).to include("2000")
    end
  end

  describe '#rent_apartment' do
    it 'rents an apartment to a tenant' do
      building.apartments.push(apartment)
      building.rent_apartment(tenant_1, apartment)
      expect(tenant_1.apartment).to_not be_nil
    end
    it 'does not rent an apartment that is full' do
      apartment.add_tenant(tenant_1)
      apartment.add_tenant(tenant_2)
      building.rent_apartment(tenant_3, apartment)
      expect(tenant_3.apartment).to(eq(nil))
    end
  end
end
