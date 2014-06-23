require_relative '../lib/apartment'
require_relative '../lib/tenant'
require_relative'../main.rb'
require 'pry'
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

  describe '#list_info' do
    it 'lists the apartment info' do
      expect(apartment.list_info).to include(apartment.floor.to_s, apartment.name, apartment.price.to_s, apartment.sqft.to_s, apartment.bedrooms.to_s, apartment.bathrooms.to_s)
    end
  end

  describe '#list_tenants' do
    it 'lists all of the tenants information' do
      apartment.tenants.push(tenant)
      apartment.tenants.push(tenant_2)
      expect(apartment.list_tenants).to include(tenant.name, tenant.age.to_s, tenant.gender)
    end
  end
  describe '#add_tenant' do
    it 'adds a tenant to the apartment' do
      expect(apartment.add_tenant(tenant)).to include(tenant)
    end
    it 'does not add more tenants than rooms' do
      expect((apartment.tenants).length).to be < apartment.bedrooms
    end
  end

end
