require_relative '../lib/apartment'
require_relative '../lib/tenant'
describe Apartment do
  subject(:susie) { Apartment.new("1A",1,1200,2000,2,2)}
  let(:tenant) { Tenant.new("Joe", 25, "Male") }
  let(:tenant_2) { Tenant.new("Jorb", 9000, "Female") }
  let(:tenant_3) { Tenant.new("Snorb", 9001, "Female") }

  it 'has a name' do
    expect(susie.name).to_not be_nil
  end

  it 'has a floor' do
    expect(susie.floor).to_not be_nil
  end

  it 'has a price' do
    expect(susie.price).to_not be_nil
  end

  it 'has a sqftage' do
    expect(susie.sqft).to_not be_nil
  end

  it 'has bedrooms' do
    expect(susie.bedrooms).to_not be_nil
  end

  it 'has bathrooms' do
    expect(susie.bathrooms).to_not be_nil
  end

  it 'has tenants' do
    expect(susie.tenants).to_not be_nil
  end

  describe '#info' do
    it 'lists the susie info' do
      expect(susie.info).to include("1A")
      expect(susie.info).to include("1200")
      expect(susie.info).to include("2000")
    end
  end

  describe '#list_tenants' do
    xit 'lists all of the tenants information' do
    end
  end

  describe '#add_tenant' do
    xit 'adds a tenant to the susie' do
    end
    xit 'does not add more tenants than rooms' do
    end
  end

end
