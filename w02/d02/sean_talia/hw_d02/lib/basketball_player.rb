require_relative('./athlete.rb')

class BasketballPlayer < Athlete

  attr_reader :head_coach, :points, :blocks

  def initialize(name, sport, city, team, income, head_coach, points, blocks)
    super(name, sport, city, team, income)
    @head_coach = head_coach
    @points = points
    @blocks = blocks
  end

  def block_shot()
    @blocks += 1
    return "SWATTED!!"
  end

  def hit_buzzer_beater(points)
    if (points == 2 || points == 3)
      @points += points
      "A BUZZER BEATER OMGOMGOMGOMG THE #{team.upcase} WIN THE GAME!!!!"
    else
      "That's not possible ..."
    end
  end

end
