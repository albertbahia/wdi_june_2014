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
    expect(apartment.tenants).to_not be_nil
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
    apartment =  Apartment.new("1A",1,1200,2000,2,2)
    apartment.add_tenant("joe", "Joe", 25, "Male")
    apartment.add_tenant("sally", "Sally", 20, "Female")
    it 'lists all of the tenants information' do
    expect(apartment.list_tenants).to eq("Joe 25 Male Sally 20 Female live(s) in this apartment.")
    end
  end

  describe '#add_tenant' do
    apartment =  Apartment.new("1A",1,1200,2000,2,2)
    it 'adds a tenant to the apartment' do
    expect(apartment.add_tenant("joe", "Joe", 25, "Male")).to eq("Joe 25 Male")
    apartment.add_tenant("sam", "Sam", 12, "Male")
    apartment.add_tenant("bill", "Bill", 13, "Male")
    end

    it 'does not add more tenants than rooms' do
      expect(apartment.add_tenant("sally", "Sally", 20, "Female")).to eq("error")
    end
  end

end
