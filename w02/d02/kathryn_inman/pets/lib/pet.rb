class Pet

  attr_reader(:name, :owner, :age)
  def initialize(name, owner, age)
    @name = name
    @owner = owner
    @age = age
    @foods_eaten = []
  end

  def love_owner
    "*#{name.capitalize} trips #{owner.capitalize} with display of affection near ankles*"
  end

  def eat(a_food)
    @foods_eaten.push(a_food)
  end

  def list_foods
    @foods_eaten.join(", ")
  end
end

#boop = Pet.new("boop", "me", 2, ["nom", "nomm"])
