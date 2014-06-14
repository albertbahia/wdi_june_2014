
class Pokemon

  attr_reader(:name, :id, :poketype, :hp, :attack, :defense, :speed)

  def initialize (name, id, poketype, hp, attack, defense, speed)
    @name = name
    @id = id
    @poketype = poketype
    @hp = hp
    @attack = attack
    @defense = defense
    @speed = speed
  end

  def poke_stats
    puts "Name: #{@name},"
    puts " ID: #{@id},"
    puts " HP: #{@hp},"
    puts " Attack: #{@attack},"
    puts " Defense: #{@defense},"
    puts " Speed: #{@speed}"
  end

  def restore_hp
    hp = 100
  end

  def take_damage (damage)
    if @hp == 0
      return
    elsif @hp < damage
      @hp = 0
    else 
      @hp -= damage
    end
  end

  def poke_status
    if @hp == 0
      puts "faint"
    else
      puts "not faint"
    end
  end

end



