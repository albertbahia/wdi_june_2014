class Peasant < Human

  def initialize(name, farm)
    super(name, nil, nil)
    @farm = farm
    @strength = 1
    @hp = 5
  end

  def strength
    @strength = 1
  end

  def hp
    @hp = 5
  end

  def realm
    nil
  end

  def farm
    @farm.split.map(&:capitalize).join(' ')
  end

  def introduce
    "I am a humble peasant named #{name} of the #{farm}"
  end

end
