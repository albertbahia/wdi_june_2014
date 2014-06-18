class Athlete

  attr_reader :name, :sport, :city, :team, :income

  def initialize(name, sport, city, team, income)
    @name = name
    @sport = sport
    @city = city
    @team = team
    @income = [income, 0].max
  end

  def sign_endorsement(value)
    @income += value
  end

end
