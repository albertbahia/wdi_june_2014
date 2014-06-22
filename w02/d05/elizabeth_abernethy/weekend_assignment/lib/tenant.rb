class Tenant < Apartment

  def initialize(address, name, age, gender)
    @name = name
    @age = age
    @gender = gender
    super(address)
  end

end
