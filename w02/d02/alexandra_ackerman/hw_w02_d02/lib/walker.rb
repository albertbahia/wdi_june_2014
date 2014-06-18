require_relative "./being.rb"

class Walker < Being

  attr_reader(:name, :hp, :limbs)

  def initialize(name, hp, limbs)
    super(name, hp)
    @limbs = limbs
  end

  def hp()
    if @hp < 0
      return 0
    else
      return @hp
    end
  end

  def growl()
    return ("AHHHHHHHGGGGGGG!")
  end

  def lose_limb()
    @limbs -= 1
  end

end
