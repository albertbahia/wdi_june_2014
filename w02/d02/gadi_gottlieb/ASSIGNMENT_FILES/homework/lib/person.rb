class Person

  attr_reader(:name, :age, :hometown, :strength, :hp)

  def initialize(name, age, hometown, strength)
    @name = name
    @age = age
    @hometown = hometown
    @strength = strength
    @hp = 100
  end

  def alive?()
    @hp > 0
  end

end
