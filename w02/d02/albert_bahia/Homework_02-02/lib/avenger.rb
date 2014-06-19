class Avenger

  attr_reader(:name, :hp, :strength)

  def initialize(name, hp, strength)
    @name = name
    @hp = hp
    @strength = strength
  end

  def introduce()
    intro = "Hello, I'm #{name}"
  end



end
