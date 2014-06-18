require_relative('../lib/house.rb')
require_relative('../spec/house_spec.rb')
class Lannister < House


  def initialize(name, rank, gold_pieces)
    @name = name
    @house = "Lannister"
    @rank = rank
    @sigil = "A golden lion on a crimson field!"
    @home = "Casterly Rock"
    @gold_pieces = gold_pieces
    @phrase = "A Lannister always pays his debts!"
    super(house, home, sigil, phrase, members)
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
    else
      @gold_pieces
    end
  end

  def pay_assassins(num, victim)
    @gold_pieces -= num
    victim.take_damage(@victim.hp)
  end
end
