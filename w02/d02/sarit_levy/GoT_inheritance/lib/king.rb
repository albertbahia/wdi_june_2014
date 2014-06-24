require_relative './human.rb'

class King < Human

attr_reader(:realm, :noble)

  def initialize(name, house, realm)
    super(name, house, strength)
    @realm = realm
    @strength = 200
    @hp = 1000
    @noble = noble
  end

  def introduce()
    return "I am King #{name} of #{house} House of the #{realm} Realm."
    return "King #{name} of the #{realm} Realm is a #{noble} king."
  end

end
