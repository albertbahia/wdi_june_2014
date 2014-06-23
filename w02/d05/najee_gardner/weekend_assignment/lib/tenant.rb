class Tenant
  attr_reader :name, :age, :gender
  attr_accessor :apartment

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
    @apartment = nil
  end

  def list_info
    info = "#{name.capitalize}\n--------\n"
    info << "Apartment #{apartment}\n"
    info << "Age: #{age} | Gender: #{gender}\n"

  end
end
