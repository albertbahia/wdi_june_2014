class Dog < Pet

  attr_reader(:ear_type)

  def initialize(name, owner, age, ear_type)
    # @name = name
    # @owner = owner
    # @age = age
    # @foods_eaten = []
    super(name, owner, age)
    @ear_type = ear_type
  end

  def bark()
    return "BARK!"
  end

  def eat(food)
    super(food)
    puts("Woof!")
  end

end
