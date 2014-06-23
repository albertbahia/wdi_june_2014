class Dog < Pet

  attr_reader(:ear_type)

  def initialize(name, age, owner, ear_type)
    # @name = name
    # @age = age
    # @owner = owner

    super(name, age, owner)

    @foods_eaten = []
    @ear_type = ear_type
  end

  def eat(food)
    return "Woof"
  end

  def sleep()
    @hours_slept += 1
  end



end
