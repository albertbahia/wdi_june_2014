require_relative 'human.rb'

class King < Human
  attr_reader :realm

  def initialize(name, house, realm)
    super(name, house, 200)
    @realm = realm
    @hp = 1000
  end

  def introduce
    super + " I am a noble king from the #{realm}ern realm."

  end
end
