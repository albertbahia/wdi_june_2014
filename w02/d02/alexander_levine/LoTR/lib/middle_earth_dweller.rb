class MiddleEarthDweller

  attr_reader :name, :hometown, :favorite_town

  def initialize(name, hometown, favorite_town)
    @name = name
    @hometown = hometown
    @favorite_town = favorite_town
  end

  def list_stats
    stats = "Name: #{name}, Hometown: #{hometown}, Favorite Town: #{favorite_town}"
  end

end
