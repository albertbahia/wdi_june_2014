class Dog < Pets

  attr_reader(:ear_type)

  def initialize(name, age, owner, ear_type)
    # @name = name
    # @age = age
    # @owner = owner
    # @foods_eaten = []
    super(name, age, owner)

    @ear_type = ear_type

  end

  def bark()
    return "Bow wow woof ruff bark"
  end

  def eat(food)
    super(food)
    puts("wooooof!")
  end

end
