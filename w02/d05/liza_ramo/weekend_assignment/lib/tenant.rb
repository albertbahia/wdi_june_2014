

class Tenant

  attr_reader(:name, :age, :gender, :apartment)

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
    @apartment = nil
  end

  def list_info
    "Name: #{name}, Age: #{age}, Gender: #{gender}"
  end
end
