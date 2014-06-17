class Dog < Pet
  attr_reader(:ear_type)
  def initialize(name, owner, age,ear_type)
    # @name  = name
    # @owner = owner
    # @age   = age
    # @food_eaten = []
    super(name, age, owner)
    @ear_type = ear_type
  end
  def bark
    return "Bark Bark"
  end

  def food_ate(food)
    super(food)
    return "Woof!"
  end


end
