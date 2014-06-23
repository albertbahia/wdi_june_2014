require_relative '../lib/apartment.rb'
require_relative '../lib/tenant'



describe Apartment do
  subject(:apartment) { Apartment.new("1A",1,1200,2000,2,2)}
  let(:tenant) { Tenant.new("Joe", 25, "Male") }
  let(:tenant_2) { Tenant.new("Jorb", 9000, "Female") }
  let(:tenant_3) { Tenant.new("Snorb", 9001, "Female") }

  it 'has a name' do
    expect(apartment.name).to eq("1A")
  end

  it 'has a floor' do
    expect(apartment.floor).to eq(1)
  end

  it 'has a price' do
    expect(apartment.price).to eq(1200)
  end

  it 'has a sqftage' do
    expect(apartment.sqft).to eq(2000)
  end

  it 'has bedrooms' do
    expect(apartment.bedrooms).to eq(2)
  end

  it 'has bathrooms' do
    expect(apartment.bathrooms).to eq(2)
  end

  it 'has tenants' do
    expect(apartment.tenants).to_not be_nil
  end

  describe '#info' do
    it 'lists the apartment info' do
      expect(apartment.info).to include("1A", "1", "1200", "2000", "2", "2")
    end
  end

  describe '#list_tenants' do
    it 'lists all of the tenants information' do
      expect(apartment.list_tenants).to include("Jorb", "Joe", "Snorb")
    end
  end

  describe '#add_tenant' do
    it 'adds a tenant to the apartment' do
      expect(apartment.add_tenant("John", 25, "Male")).to include("John", 25, "Male")
    end

    it 'does not add more tenants than rooms' do
      expect(apartment.add_tenant).to eq()
    end
  end

end
