class Tenant

  attr_reader :name, :age, :gender, :apartment

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
    @apartment = nil
  end

  def list_info()
    return_string = "Name: #{name} \n"
    return_string += "Age: #{age} \n"
    return_string += "Gender: #{gender} \n"
    return_string += "Apartment: #{apartment}"
  end

  def move_into_apt(apartment)
    @apartment = apartment
  end

end
