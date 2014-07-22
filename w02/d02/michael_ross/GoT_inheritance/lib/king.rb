require_relative './human'

class King < Human

  attr_reader(:realm)

  def initialize(king_name, king_house, realm)
    super(king_name, king_house, 200)
    @realm = realm
    @hp = 1000
  end

  def introduce
    "I am #{name.capitalize} #{house.capitalize} of the #{realm.capitalize}.  I am a noble king."
  end

end
