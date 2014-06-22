require_relative '../lib/tenants.rb'

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
    subject(:tenant) { Tenant.new("Joe", 25, "Male") }
    it 'lists the tenant' do
    expect(joe.list_info).to eq("Joe is 25 years old and is Male.")
    end
  end

end
