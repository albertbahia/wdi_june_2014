class Dwarf < MiddleEarthDweller

  attr_reader :gems_collected

  def initialize(name, hometown, favorite_town)
    super(name, hometown, favorite_town)
    @gems_collected = 0
  end

  def collect_gem
    @gems_collected += 1
  end

  def change_hometown(new_hometown)
    @hometown = new_hometown
  end

end
