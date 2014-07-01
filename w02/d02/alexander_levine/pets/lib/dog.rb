class Dog < Pet

attr_reader :ear_type

  def initialize(name, age, owner, ear_type)
    # @name = name
    # @owner = owner
    # @age = age
    # @foods_eaten = []

    super(name, age, owner)

    @ear_type = ear_type
  end

  def bark
    return "Bow wow woof ruff bark"
  end

  def eat(food)
    super
    return "Woof Yummy"
  end

end
