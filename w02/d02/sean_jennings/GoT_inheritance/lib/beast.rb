class Beast < Being

    attr_reader(:name, :species, :strength)

    def initialize(name,species,strength)
      @name = name
      @species = species
      @strength = strength
      @hp = 100
    end
end
