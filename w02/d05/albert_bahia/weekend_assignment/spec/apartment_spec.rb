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
    expect(apartment.floor).to eq(1)
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
      apartment.info(apartment)
    end
  end

  describe '#list_tenants' do
    it 'lists all of the tenants information' do
      apartment.list_tenants(tenant, tenant_2, tenant_3)
    end
  end

  describe '#add_tenant' do
    it 'adds a tenant to the apartment' do
      apartment.add_tenant(apartment.bedrooms, tenant)
    end
    it 'does not add more tenants than rooms' do
      apartment.add_tenant(apartment.bedrooms, tenant)
    end
  end

end
