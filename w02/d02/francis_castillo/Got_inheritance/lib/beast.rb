require_relative('../lib/being.rb')
class Beast < Being

  #attr_reader(:name, :species, :strength, :hp)
  def initialize(name, species, strength)
    super(name, strength, hp)
    @species = species
    @hp = 100
  end

  def species
    return @species
  end

end
