class Beast < Being
  attr_reader(:species)

  def initialize(name, species, strength)
    super(name, strength)
    @species = species
  end
end
