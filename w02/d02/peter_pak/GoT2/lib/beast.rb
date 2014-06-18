class Beast < Being

  def initialize(name, species, strength)
    super(name, strength)
    @species = species
    @hp = 100
  end

  def species
    return @species.capitalize
  end

end
