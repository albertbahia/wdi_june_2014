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
      expect(apartment.info).to include('Name: 1A, Floor: 1, Price: 1200, Square footage: 2000, Bedrooms: 2, Bathrooms: 2')
    end
  end

  describe '#list_tenants' do
    xit 'lists all of the tenants information' do
      expect(apartment.list_tenants).to include(tenants_list)

      # expect(apartment.list_tenants).to include(tenant_2.list_info)
      # expect(apartment.list_tenants).to include(tenant_3.list_info)
    end
  end

  describe '#add_tenant' do
    it 'adds a tenant to the apartment' do
      apartment.add_tenant(tenant)
      expect(aparment.list_tenants).to include("Joe", "25", "Male")
      #expect(apartment.add_tenant).to eq(false)

    end
    xit 'does not add more tenants than rooms' do
    end
  end

end
