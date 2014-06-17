class Beast < Being

  def initialize(name,species,strength)
    @name = name
    @species = species
    @strength = strength
    @hp = 100
  end

  def name
    @name
  end

  def species
    @species
  end

  def strength
    @strength
  end

  def hp
    @hp
  end
end
