require 'pry'

class Trainer

  attr_reader(:name, :age, :hometown, :pokemons)

  def initialize(name,age,hometown,pokemons)
    @name = name
    @age = age
    @hometown = hometown
    @pokemons = pokemons
  end

  def list_info
    list = {
      :name => @name,
      :age => @age,
      :hometown => @hometown,
      :pokemons => @pokemons
    }
    list.each do |key,value|
        puts "#{key}: #{value}"
    end
  end


end


Joe = Trainer.new("Joe",12,"DC",["Poke","Pokee","Pokeee"])

binding.pry
