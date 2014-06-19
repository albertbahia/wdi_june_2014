class Dog < Pet

  attr_reader(:ear_type)

  def initialize(name, owner, age, ear_type)
    # @name = name
    # @owner = owner
    # @age =  age
    # @food_eaten = []
    super(name, age, owner)
    @ear_type = ear_type
  end

  def eat(food)
    super(food)
    puts("woof")
  end
  
  def bark ()
    return "woof woof"
  end


end
