require_relative '../lib/human.rb'

class Peasant < Human
  attr_reader :farm

  def initialize(name, farm)
    super(name, nil, 1)
    @farm = farm
    @hp = 5
  end

  def introduce
    "I am #{name} of #{farm}. I am merely a humble peasant."
  end
end
