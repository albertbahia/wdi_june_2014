require 'pry'

class Pokemon

  attr_reader(:name,:id,:poketype,:hp,:attack,:defense,:speed)
  def initialize(name, id, poketype, hp, attack, defense, speed)
    @name = name
    @id = id
    @poketype = poketype
    @hp = hp
    @attack = attack
    @defense = defense
    @speed = speed
  end

  def list_stats
    list_info  = "Name: #{name.capitalize}\n"
    list_info += "ID: #{id}\n"
    list_info += "Poketype: #{poketype.capitalize}\n"
    list_info += "HP: #{hp}\n"
    list_info += "Attack: #{attack.capitalize}\n"
    list_info += "Defense: #{defense.capitalize}\n"
    list_info += "Speed: #{speed}"

  end

end

me = Pokemon.new("Picchu", 123, "electric", 75, "Fire", "Water", 10)

puts me.list_stats

binding.pry
