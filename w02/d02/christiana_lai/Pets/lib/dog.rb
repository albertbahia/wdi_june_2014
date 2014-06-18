class Dog < Pet

  attr_reader(:ear_type)

  def initialize (name, age, owner, ear_type)
    # @name = name
    # @age = age
    # @owner = owner
    # @foods_eaten = []
    super(name, age, owner)

    @ear_type = ear_type
  end

  def eat(food)
    super(food)
    return "Bark!"
  end

  def bark
    return "Woof!"
  end
end
