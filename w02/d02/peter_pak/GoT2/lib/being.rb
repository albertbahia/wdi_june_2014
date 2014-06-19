class Being

  def initialize(name, strength)
    @name = name
    @strength = strength
  end

  def name
    return @name.split.map(&:capitalize).join(' ')
  end

  def strength
    return @strength
  end

  def hp
    return @hp
  end

  def take_damage(damage_amount)
    if damage_amount > 0
      @hp = [@hp - damage_amount, 0].max
    end
    # if damage_amount < 0
    #   nil
    # elsif damage_amount >= @hp
    #   @hp = 0
    # else
    #   @hp -= damage_amount
    # end
  end

  def attack(attack_who)
    attack_who.take_damage(strength)
  end

  def alive?
    @hp > 0 ? true : false
  end

end
