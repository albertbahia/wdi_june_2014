require_relative('../lib/human.rb')
class House


  def initialize(house, home, sigil, phrase)
    @house = house
    @home = home
    @sigil = sigil
    @members = []
    @phrase = phrase
  end

  def house
    return @house
  end

  def sigil
    @sigil
  end

  def home
    @home
  end

  def members
    members.join(', ')
  end

  def phrase
    @phrase
  end

  def introduce
    intro = " of House #{@house} from #{@home}! #{@phrase}"

  end

end
