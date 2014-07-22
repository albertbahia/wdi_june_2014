class Pet

  attr_reader(:name, :owner, :age)

  def initialize(name, owner, age)
  @name = name
  @owner = owner
  @age = age
  @foods_eaten = []
  end

  def love_owner()
    puts("Oh #{owner}, I love you so!")
  end

  def eat(new_food)
    @foods_eaten.push(new_food)
  end

  def list_foods()
    @foods_eaten.join(', ')
  end


end
