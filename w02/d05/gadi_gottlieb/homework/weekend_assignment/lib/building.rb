class Building

  attr_reader :name, :address, :floors, :apartments

  def initialize(name, address, floors)
    @name = name
    @address = address
    @floors = floors
    @apartments = []
  end

  def list_apartments
    apartment_list = "Apartments: #{apartments}."
  end

  def rent_apartment(new_tenant)
    if apartments = nil
      apartments.push(new_tenant)
    else
      "Occupied"
    end
  end
  
end
