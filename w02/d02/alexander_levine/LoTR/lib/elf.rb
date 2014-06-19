class Elf < MiddleEarthDweller

  attr_reader :flowers_sprouted

  def initialize(name, hometown, favorite_town)
    super(name, hometown, favorite_town)
    @flowers_sprouted = 0
  end

  def beautify
    @flowers_sprouted += 1
  end

  def pass_over_sea
    @hometown = "The West"
  end

end
