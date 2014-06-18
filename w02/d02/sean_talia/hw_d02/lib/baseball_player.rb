
require_relative('./athlete.rb')

class BaseballPlayer < Athlete

  attr_reader :manager, :home_runs, :rbi, :stolen_bases

  def initialize(name, sport, city, team, income, manager, homers, rbi, sb)
    super(name, sport, city, team, income)
    @manager = manager
    @home_runs = homers
    @rbi = rbi
    @stolen_bases = sb
  end

  def hit_grand_slam()
    @home_runs += 1
    @rbi += 4
    'Absolutely INCREDIBLE!!!!'
  end

  def steal_base()
    @stolen_bases += 1
    "Runner goes! ... and he's safe!!"
  end

end
