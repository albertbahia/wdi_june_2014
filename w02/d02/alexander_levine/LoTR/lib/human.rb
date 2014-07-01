class Human < MiddleEarthDweller

  attr_reader :towers_built

  def initialize(name, hometown, favorite_town)
    super(name, hometown, favorite_town)
    @towers_built = 0
  end

  def build_tower
    @towers_built += 1
  end

  def change_favorite_town(new_town)
    @favorite_town = new_town
  end

end
