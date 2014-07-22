require_relative './being.rb'

class Beast < Being

  attr_reader(:species)

  def initialize(species)
    super(name, strength)
    @species = species
  end

end
