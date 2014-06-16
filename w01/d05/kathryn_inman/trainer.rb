#require 'pry'

class Trainer

  attr_reader(:name, :age, :hometown, :pokemans)
  def initialize(initial_name, initial_age, initial_hometown, initial_pokemans)
    @name = initial_name
    @age = initial_age
    @hometown = initial_hometown
    @pokemans = initial_pokemans
  end

  def trainer_info()
    trainer_info_list = "#{name}, "
    trainer_info_list += "Age: #{age}, "
    trainer_info_list += "Hometown: #{hometown}"
  end

  def pokedeck
    pokemans.each do |pkmn|
      puts pkmn.name
    end
  end

  def catch_a_pokeman(new_monster)
    if pokemans.length < 6
    pokemans.push(new_monster)
  else
    puts "oops! you already have 6 pokemans"
  end
end

end



#binding.pry
