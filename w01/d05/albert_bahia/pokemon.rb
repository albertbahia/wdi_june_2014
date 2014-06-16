require 'pry'
require_relative './nurse.rb'
require_relative './trainer.rb'


class Pokemon

  attr_reader(:name, :id, :poketype, :hp, :attack, :defense, :speed)

  def initialize(name, id, poketype, hp, attack, defense, speed)
    puts("Pokemon created!")
    @name = name
    @id = id
    @poketype = poketype
    @hp_max = 100
    @hp = hp
    @attack = attack
    @defense = defense
    @speed = speed
  end


  def restore_hp()

    if @hp < 100 && @hp > 0
      @hp = 100
    end

    return @hp

  end


  def decrease_hp

    if @attack > @defense && @hp != 0
      attack_decrease_hp = @defense - @attack
      @hp = @hp - attack_decrease_hp.abs

      if @hp <= 0
        @hp = 0
        show_status()
      else
        show_status()
      end

    end


  end


  def show_stats
    puts("Name: #{name.capitalize}")
    puts("Pokedex: #{id}")
    puts("Poke Type: #{poketype}")
    puts("HP: #{hp}")
    puts("Attack: #{attack}")
    puts("Defense: #{defense}")
    puts("Speed: #{speed}")
  end

  def show_status
    if @hp == 0
      puts("#{name} has fainted!")
    else
      puts("#{name.capitalize} has #{hp} HP.")
    end

  end

end

# pokemons = [
#   Pokemon.new("charizard", 6, "Fire", 0, 40, 30, 60),
#   Pokemon.new("wartortle", 8, "Water", 0, 30, 40, 30),
#   Pokemon.new("pikachu", 25, "Electric", 50, 30, 20, 60),
#   Pokemon.new("sandslash", 28, "Ground", 50, 60, 60, 40),
#   Pokemon.new("squirtle", 7, "Water", 70, 30, 30, 20),
#   Pokemon.new("jigglypuff", 39, "Fairy", 70, 20, 10, 10),
#   Pokemon.new("venusaur", 3, "Grass", 90, 40, 40, 40),
#   Pokemon.new("machamp", 68, "Fighting", 100, 80, 40, 30)
# ]
# binding.pry
