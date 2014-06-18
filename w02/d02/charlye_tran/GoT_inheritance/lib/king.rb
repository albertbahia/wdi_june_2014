class King < Human
  attr_reader(:realm)

  def initialize(name, house, realm)
    super(name, house, strength)
    @realm = realm
    @strength = 200
    @hp = 1000
  end

  def introduce
    super()
    return "#{name} of house #{house}, King of #{realm} is a noble king."
  end
end
