require_relative './being.rb'

class Beast < Being

  attr_reader(:species, :strength)

  def initialize(name, species, strength)
    super(name, strength)
    @species = species
  end

end
