
class House


  def initialize(house, home, sigil, phrase)
    @house = house
    @home = home
    @sigil = sigil
    @phrase = phrase
    @members = []

  end

  def house
    return @house
  end

  def home
      @home
  end

  def sigil
    @sigil
  end

  def phrase
    @phrase
  end

  def members
    return  @members

  end

  def introduce
    intro = " of House #{@house} from #{@home}! #{@phrase}"
    return intro
  end

  def add_member(name_to_add)
    return @members.push(name_to_add)
  end








end
