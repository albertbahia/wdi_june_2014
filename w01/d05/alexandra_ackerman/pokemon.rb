require 'pry'

class Pokemon

    attr_reader( :name, :id, :poketype, :hp, :attack, :defense, :speed)

    def initialize(name, id, poketype, hp, attack, defense, speed)
      @name = name
      @id = id
      @poketype = poketype
      @hp = 100
      @attack = attack
      @defense = defense
      @speed = speed
    end

    def list_stats
        stats_string = "Name: #{name}, "
        stats_string += "ID: #{id}, "
        stats_string += "Poketype: #{poketype}, "
        stats_string += "HP: #{hp}, "
        stats_string += "Attack: #{attack}, "
        stats_string += "Defense: #{defense}, "
        stats_string += "Speed: #{speed}"
    end

    def restore_hp(hp = 100)
      @hp = hp
    end

    def take_damage(damage)
      new_hp = @hp - damage
      @hp = new_hp
    end

    def give_status
      if @hp <= 0
        puts("OH NO, #{name} has fainted!")
      else
        puts("#{name} has enough hp to keep battling!")
      end
    end
end

binding.pry

#For tests: charizard = Pokemon.new("Charizard", 100, "Fire", 90, 10, 20, 15)
