class Robot < Avenger

attr_reader(:type)

def initialize(name, type)
  super(name, hp, strength)

  @name = name
  @type = type
  @hp = 900
  @strength = 3000
end

def shoot(mutant)
  # not sure how to reference the action from the test
end

def speak()
  "Hello, I'm Ironman and I will defend you."
end


end
