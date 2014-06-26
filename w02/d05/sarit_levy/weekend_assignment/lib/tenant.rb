#Zero failures remain but needs a list_info method.

class Tenant

  attr_reader(:name, :age, :gender)

  def initialize(name_input, age_input, gender_input)
    @name = name_input
    @age = age_input
    @gender = gender_input

  end

  def apartment
  end

  def has_apartment
  end

  def list_info
    # lists the tenant
  end


end
