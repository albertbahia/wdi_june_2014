
class Building

  def initialize (name, address, floors)
    @name = name
    @address = address
    @floors = floors
    @apartments = :apartments
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

  # def tenant
  #   @tenant
  # end

end
