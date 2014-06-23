require_relative('apartment')

class Tenant < Apartment
  attr_accessor(:name, :age, :gender, :apartment)

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
    @apartment = nil
    @info = info
  end

  def list_info
    @age = age.to_s
    return "Name: #{name}\n Age: #{age}\n Gender: #{gender}"
  end

end
