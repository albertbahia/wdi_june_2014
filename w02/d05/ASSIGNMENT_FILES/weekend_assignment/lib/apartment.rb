class Apartment

  attr_reader(:name, :floor, :price, :sqft, :bedrooms, :bathrooms, :tenants)

  def initialize(name, floor, price, sqft, bedrooms, bathrooms)
    @name = name
    @floor = floor
    @price = price
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []
  end

  def info
    info_string = "Name: #{name}\nFloor: #{floor}\n"
    info_string += "Price: $#{price}\nSquare Feet: #{sqft}\n"
    info_string += "Bedrooms: #{bedrooms}\nBathrooms: #{bathrooms}"
  end

  def list_tenants
    @tenants.map {|tenant| tenant.list_info }.join("\n")
  end

  def add_tenants(tenant_name)
    if @tenants.count < @bedrooms
      @tenants.push(tenant_name)
    end
  end

end
