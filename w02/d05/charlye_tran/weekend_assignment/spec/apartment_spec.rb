require_relative '../lib/apartments'
require_relative '../lib/tenants'
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
    expect(apartment.tenants).to be_nil
  end

  describe '#info' do
    apartment =  Apartment.new("1A",1,1200,2000,2,2)
    let(:tenant) { Tenant.new("Joe", 25, "Male") }
    let(:tenant_2) { Tenant.new("Jorb", 9000, "Female") }
    let(:tenant_3) { Tenant.new("Snorb", 9001, "Female") }
    it 'lists the apartment info' do
      expect(apartment.info).to eq("Apartment: 1A is on 1 floor, costs $1200, has 2 bedrooms and 2 bathrooms.")
    end
  end

  describe '#list_tenants' do
    subject(:apartment) { Apartment.new("1A",1,1200,2000,2,2)}
    let(:tenant) { Tenant.new("Joe", 25, "Male") }
    let(:tenant_2) { Tenant.new("Jorb", 9000, "Female") }
    let(:tenant_3) { Tenant.new("Snorb", 9001, "Female") }
    it 'lists all of the tenants information' do
    expect(apartment.list_tenants).to eq("Joe, Jorb, Snorb live in this apartment.")
    end
  end

  describe '#add_tenant' do
    let(:tenant) { Tenant.new("Joe", 25, "Male") }
    it 'adds a tenant to the apartment' do
    expect(apartment.add_tenant(tenant, "Joe", 25, "Male")).to include("Joe", 25, "Male")
    end
    it 'does not add more tenants than rooms' do
      expect(apartment.tenant_count).to_not be_greater than apartment.bedrooms
    end
  end

end
