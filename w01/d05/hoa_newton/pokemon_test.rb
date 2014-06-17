require 'test/unit'

require_relative './pokemon.rb'

class TestArray < Test::Unit::TestCase
  def test_restore_hp
	pokemon = Pokemon.new("Cricket", 3, "rock", 0, 85, 90, 95)    
	pokemon.restore_hp
	assert_equal pokemon.hp, 100
  end

  def test_take_damage
  	pokemon = Pokemon.new("Cricket", 3, "rock", 100, 85, 90, 95)    
  	pokemon.take_damage(30)
  	assert_equal pokemon.hp, 70
  end

  def test_take_damage_with_value_less_than_hp
  	pokemon = Pokemon.new("Cricket", 3, "rock", 90, 85, 90, 95) 
  	pokemon.take_damage(95) 
  	assert_equal pokemon.hp, 0
  end
end