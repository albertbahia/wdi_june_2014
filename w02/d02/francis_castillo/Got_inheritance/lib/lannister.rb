require 'pry'
require_relative 'house'

class Lannister < House


  def initialize(name, rank, gold_pieces)
    super(house, home, sigil, phrase)
    @name = name
    @house = "Lannister"
    @rank = rank
    @sigil = "A golden lion on a crimson field!"
    @home = "Casterly Rock"
    @gold_pieces = gold_pieces
    @phrase = "A Lannister always pays his debts!"

  end

  def rank
    return @rank
  end

  def gold_pieces
    return @gold_pieces
  end

  def borrow_from_iron_bank(num)
    if @rank == "Patriarch"
     @gold_pieces += num
     return true
    else
      return false
    end
  end

  def pay_assassins(num, victim)
    @gold_pieces -= num
    victim.take_damage(victim.hp)
  end
end

binding.pry
