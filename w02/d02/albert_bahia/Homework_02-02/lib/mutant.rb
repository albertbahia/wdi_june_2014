class Mutant < Avenger

attr_reader(:laboratory)

def initialize(name, laboratory)
  super(name, hp, strength)

  @name = name
  @laboratory = laboratory
  @hp = 4000
  @strength = 5000
end

def transform()
  "I'm transforming!  You better run now!"
end

def yell()
  "SNNNARRLLL"
end


end
