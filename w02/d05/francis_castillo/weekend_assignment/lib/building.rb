require_relative '../lib/apartment'
require_relative '../lib/tenant'
class Building

  def initialize (name, address, floors)
    @name = name
    @address = address
    @floors = floors
    #@apartments = :apartment["name"]
    @apartments = []
  end

  def name
    @name
  end

  def address
    @address
  end

  def floors
    @floors
  end

  def apartments
    @apartments
  end

  def list_apartment_info
    @apartments
  end
  # def tenant
  #   @tenant
  # end
  def add_apartment(push_var)

    @apartments.push(push_var)
  end
end
