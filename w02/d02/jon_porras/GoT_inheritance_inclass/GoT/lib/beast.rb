require_relative 'being.rb'

class Beast < Being

  def initialize(name, species, strength)
    @name = name
    @species = species
    @strength = strength
    @hp = 100

    #super(name, strength)

  end

end
