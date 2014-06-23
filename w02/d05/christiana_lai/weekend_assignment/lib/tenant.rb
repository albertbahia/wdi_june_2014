class Tenant

  attr_reader(:name, :age, :gender, :apartment)

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
    @apartment = nil
  end

  def list_info
    list_info = "Name: #{name}"
    list_info += "Age: #{age}"
    list_info += "Gender: #{gender}"
  end

end
