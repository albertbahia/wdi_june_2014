class Tenant

  attr_reader(:name, :age, :gender, :apartment)
  def initialize(initial_name, initial_age, initial_gender)
    @name = initial_name
    @age = initial_age
    @gender = initial_gender
    @apartment = nil
  end
end
