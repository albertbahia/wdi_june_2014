require 'pry'

class Pokemon

  attr_reader :name, :id, :poketype, :hp, :max_hp, :attack, :defense, :speed

  def initialize(name, id, poketype, default_hp, init_attack, init_defense, init_speed)
    @name = name
    @id = id
    @poketype = poketype
    if default_hp > 100
      puts "Warning: Pokémon may not have hp exceeding 100. Setting HP = 100."
      @hp = 100
      @max_hp = 100
    else
      @hp = default_hp
      @max_hp = default_hp
    end
    @attack = init_attack
    @defense = init_defense
    @speed = init_speed
  end

  def list_stats()
    puts "~" * 10
    puts "Name: #{@name}"
    puts "ID: #{@id}"
    puts "Pokétype: #{@poketype}"
    puts "HP: #{@hp}"
    puts "Attack: #{@attack}"
    puts "Defense: #{@defense}"
    puts "Speed: #{@speed}"
    puts "~" * 10
  end

  def full_restore_hp()
    @hp = @max_hp
  end

  def take_damage()
    if @hp != 0
      @hp -= 1
      if @hp == 0
        puts "#{@name} has fainted!"
      end
    else
      puts "#{@name} has already fainted!"
    end
  end

  def take_med_damage()
    if @hp < 5
      @hp = 0
      puts "#{@name} has fainted!"
    else
      @hp -= 5
      if @hp == 0
        puts "#{@name} has fainted!"
      end
    end
  end

  def take_big_damage()
    if @hp < 15
      @hp = 0
      puts "#{@name} has fainted!"
    else
      @hp -= 15
      if @hp == 0
        puts "#{@name} has fainted!"
      end
    end
  end

  def get_stronger()
    @max_hp += 5
    @attack += 5
    @defense += 5
    @speed += 5
  end

  def status()
    if @hp != 0
      puts "HP: #{@hp}/#{@max_hp}"
    else
      puts "Fainted!"
    end
  end

end

#binding.pry
