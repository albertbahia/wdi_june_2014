require_relative('being.rb')

class Beast < Being

  attr_reader(:species)

  def initialize(name, species, strength)
    super(name, strength)
    @name = name
    @species = species
    @strength = strength
    @hp = 100
  end

end
