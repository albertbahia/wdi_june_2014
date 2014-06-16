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
        stats_string = "Name: #{name.capitalize}, "
        stats_string += "ID: #{id}, "
        stats_string += "Poketype: #{poketype.capitalize}, "
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
      if @hp <= 0
        @hp = 0
      end
    end

    def give_status
      if @hp <= 0
        puts("OH NO, #{name} has fainted!")
      else
        puts("#{name} has enough hp to keep battling!")
      end
    end

    def list_name
      list_name = "#{name.capitalize}"
    end

end

#Notes on datatypes:
#name = string, id = integer, poketype = string, hp = integer
#attack = integer, defense = integer, speed = integer
