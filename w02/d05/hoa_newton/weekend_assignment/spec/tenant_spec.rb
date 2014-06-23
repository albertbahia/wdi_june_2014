require_relative '../lib/tenant'
require_relative'../main.rb'
describe Tenant do
  subject(:tenant) { Tenant.new("Joe", 25, "Male") }

  it 'has a name' do
    expect(tenant.name).to eq("Joe")
  end

  it 'has an age' do
    expect(tenant.age).to eq(25)
  end

  it 'has a gender' do
    expect(tenant.gender).to eq("Male")
  end

  it 'has an apartment but does not start with one' do
    expect(tenant.apartment).to eq(nil)
  end

  describe '#list_info' do
    it 'lists the tenant' do
      expect(tenant.list_info).to include(tenant.name, tenant.age.to_s, tenant.gender)
    end
  end

end
