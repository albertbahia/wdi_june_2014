class Building
  attr_reader :name, :address, :floors, :apartments

  def initialize(name, address, floors)
    @name = name
    @address = address
    @floors = floors
    @apartments = []
  end

  def list_apartments
    apt_info = ""
    apartments.each do |apt|
      apt_info << apt.info
    end
    apt_info
  end

  def rent_apartment(tenant, apt_name)
    tenant_apt = apartments.select {|apt| apt.name == apt_name}.first
    if tenant_apt.tenants.length < tenant_apt.bedrooms
      tenant.apartment = tenant_apt.name
      tenant_apt.tenants.push(tenant)
    end
  end
end
