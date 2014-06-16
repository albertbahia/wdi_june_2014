require_relative './trainer.rb'
require 'pry'

def print_divider()
  puts "~" * 10
end

class Nurse

  attr_reader :name, :age, :town

  def initialize(name, age, town)
    @name = name
    @age = age
    @town = town
  end

  def list_info()
    print_divider()
    puts "Name: #{@name}"
    puts "Age: #{@age}"
    puts "Town: #{@town}"
    print_divider()
  end

  def heal_pokemon_of(trainer)
    trainer.pokemons.each do |pokemon|
      pokemon.full_restore_hp()
    end
    print_divider()
    puts "Thank you! Your Pokémon are fighting fit!"
    puts "We hope to see you again."
    print_divider()
  end

end
