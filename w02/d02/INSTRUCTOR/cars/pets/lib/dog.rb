class Dog < Pet
  attr_reader(:ear_type)

  def initialize(initial_name, initial_age, initial_owner, initial_ear_type)
    super(initial_name, initial_age, initial_owner)
    @ear_type = initial_ear_type
  end

  def bark()
    return "Bow wow woof ruff bark."
  end

  def eat(food)
    super(food)
    puts("Woof")
  end
end
