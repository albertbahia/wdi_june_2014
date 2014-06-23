class Building

  attr_reader :name, :address, :floors, :apartments

  def initialize(name, address, no_of_floors)
    @name = name
    @address = address
    @floors = no_of_floors
    @apartments = {}
  end

  def add_apartment(apartment)
    key = apartment.name.to_sym
    apartments[key] = apartment
  end

  def list_apartments()
    return_string = ""
    apartments.each_value do |apartment|
      return_string += apartment.info
      return_string += "~~~~~~~~~~~~~~~ \n"
    end
    return_string
  end

  def rent_apartment(apartment, tenant)
    apartments.each do |name, apartment|
      if name == apartment.name.to_sym
        if apartment.at_capacity?
          "Apartment already full."
        else
          apartment.add_tenant(tenant)
          tenant.move_into(apartment)
        end
      end
    end
  end

end
