require_relative 'being.rb'

class Beast < Being
  attr_reader :species

  def initialize(name, species, strength)
    super(name, strength, 100)
    @species = species
  end
end
