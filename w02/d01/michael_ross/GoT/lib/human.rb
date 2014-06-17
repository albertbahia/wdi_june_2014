class Human

  attr_reader(:name, :house, :strength)

  def initialize(name, house, strength)
    @name = name
    @house = house
    @strength = strength
  end

  def hp
    @hp = 200
  end

  def introduce
    puts "Heyyyooo! I'm #{@name} of House #{@house}!"
  end

  def take_damage(damages)
    @hp = @hp - damages
    if @hp < 0
      @hp = 0
    elsif damages < 0
      @hp = @hp
    end
  end

  def attack(victim)
    victim.take_damage(strength)
  end

  def alive?
    if @hp > 0
      true
    elsif @hp == 0
      false
    end
  end



end
