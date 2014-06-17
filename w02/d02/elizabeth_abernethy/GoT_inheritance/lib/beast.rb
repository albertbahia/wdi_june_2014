require_relative 'being.rb'

class Beast < Being

  attr_reader(:species)

  def initialize(name, species, strength)
    @species = species
    super(name, strength)
  end


end
