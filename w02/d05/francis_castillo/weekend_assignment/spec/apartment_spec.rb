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
    subject(:apartment) {
    Apartment.new("1A",1,1200,2000,2,2)}
    let(:tenant) { Tenant.new("Joe", 25, "Male") }
    let(:tenant_2) { Tenant.new("Jorb", 9000, "Female") }
    let(:tenant_3) { Tenant.new("Snorb", 9001, "Female") }
    it 'lists the apartment info' do
      expect(apartment.list_apt_info).to include("1A")
      expect(apartment.list_apt_info).to include("1")
      expect(apartment.list_apt_info).to include("$1200")
      expect(apartment.list_apt_info).to include("2000")
      expect(apartment.list_apt_info).to include("2")
      expect(apartment.list_apt_info).to include("2")
    end
  end

  describe '#list_tenants' do
    xit 'lists all of the tenants information' do
    end
  end

  describe '#add_tenant' do
    xit 'adds a tenant to the apartment' do
    end
    xit 'does not add more tenants than rooms' do
    end
  end

end
