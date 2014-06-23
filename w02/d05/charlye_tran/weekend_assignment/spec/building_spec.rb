require_relative '../lib/buildings'
require_relative '../lib/apartments'
require_relative '../lib/tenants'

describe Building do
  subject(:building) { Building.new("HAMco Towers", "41 USW NY,NY", 5)}
  subject(:apartment) { Apartment.new("1A",1,1200,2000,1,2)}
  let(:tenant_1) { Tenant.new("Joe", 25, "Male") }
  let(:tenant_2) { Tenant.new("Sally", 20, "female") }
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
    expect(building.apartments).to eq([])
  end

  describe '#rent_apartment' do
    building = Building.new("HAMco Towers", "41 USW NY,NY", 5)
    apartment = Apartment.new("1A",1,1200,2000,1,2)
    tenant_1 = Tenant.new("Joe", 25, "Male")
    tenant_2 = Tenant.new("Sally", 20, "female")

    it 'should rent an apartment to a tenant' do
    expect(building.rent_apartment(apartment, tenant_1)).to eq("1A has been rented to Joe 25 Male.")
    end

    building.rent_apartment("1A", tenant_1)
    it 'does not rent an apartment that is full' do
    expect(building.rent_apartment(apartment, tenant_2)).to eq("Someone already lives in that apartment.")
    end
  end

  describe '#list_apartments' do
    building = Building.new("HAMco Towers", "41 USW NY,NY", 5)
    apartment = Apartment.new("1A",1,1200,2000,1,2)
    building.add_apartment(apartment)

    it 'returns information about the apartment' do
    expect(building.list_apartments).to eq("1A 1 1200 2000 1 2 []")
    end
    
  end


end
