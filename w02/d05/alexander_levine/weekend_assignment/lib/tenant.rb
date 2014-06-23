class Tenant

  attr_reader :name, :age, :apartment, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @apartment = nil
    @gender = gender
  end

  def list_info
    info = "Name: #{@name}\n"
    info += "Age: #{@age.to_s}"
    info += "Gender: #{@gender}\n"
  end

  def move_in(apartment)
    @apartment = apartment
  end

end
