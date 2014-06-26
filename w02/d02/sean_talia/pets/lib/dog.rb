class Dog < Pet

  attr_reader :ear_type

  def initialize(name, owner, age, ear_type)
    super(name, owner, age)
    @ear_type = ear_type
  end

  def eat(food)
    super(food)
    puts "Woof!"
  end

  def bark()
    puts "Woof woof!"
  end

end
