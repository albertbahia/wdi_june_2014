require_relative '../lib/class_being.rb'

class Beast < Being

attr_reader(:species)

    def initialize(name, species, strength)
    super(name, strength)
    @species = species
    @hp = 100
    end
end
