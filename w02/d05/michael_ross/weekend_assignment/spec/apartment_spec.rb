require_relative '../lib/apartment'
require_relative '../lib/tenant'
describe Apartment do
  subject(:apartment) { Apartment.new("1A",1,1200,2000,2,2)}
  let(:tenant) { Tenant.new("Joe", 25, "Male") }
  let(:tenant_2) { Tenant.new("Jorb", 9000, "Female") }
  let(:tenant_3) { Tenant.new("Snorb", 9001, "Female") }

  it 'has a name' do
    expect(apartment.name).to_not be_nil
  end

  it 'has a floor' do
    expect(apartment.floor).to_not be_nil
  end

  it 'has a price' do
    expect(apartment.price).to_not be_nil
  end

  it 'has a sqftage' do
    expect(apartment.sqft).to_not be_nil
  end

  it 'has bedrooms' do
    expect(apartment.bedrooms).to_not be_nil
  end

  it 'has bathrooms' do
    expect(apartment.bathrooms).to_not be_nil
  end

  it 'has tenants' do
    expect(apartment.tenants).to_not be_nil
  end

  describe '#info' do
    it 'lists the apartment info' do
      expect(apartment.info).to include(apartment.name)
      expect(apartment.info).to include(apartment.floor.to_s)
      expect(apartment.info).to include(apartment.price.to_s)
      expect(apartment.info).to include(apartment.sqft.to_s)
      expect(apartment.info).to include(apartment.bedrooms.to_s)
      expect(apartment.info).to include(apartment.bathrooms.to_s)
      expect(apartment.info).to include(apartment.tenants.to_s)
    end
  end

  describe '#list_tenants' do
    it 'lists all of the tenants information' do
      expect(apartment.list_tenants).to include(apartment.tenants)
    end
  end

  describe '#add_tenant' do
    it 'adds a tenant to the apartment' do
      expect(apartment.add_tenant(tenant)).to include(tenant)
    end
    it 'does not add more tenants than rooms' do
      apartment.add_tenant(tenant)
      apartment.add_tenant(tenant_2)
      apartment.add_tenant(tenant_3)
      expect(apartment.tenants.length).to eq(2)
    end
  end

end
