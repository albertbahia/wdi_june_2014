
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
    return members.join(",")
  end

  def add_member(name_to_add)
    return members.push(name_to_add)
  end

  def phrase
    @phrase
  end



  def introduce
    intro = " of House #{@house} from #{@home}! #{@phrase}"
    return intro
  end




end
