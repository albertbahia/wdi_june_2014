
class Stark < House


  def initialize(name, rank, sword_skills)
    @name = name
    @house = "Stark"
    @rank = rank
    @sigil = "A grey direwolf on a white field"
    @home = "Winterfell"
    @sword_skills = sword_skills
    @phrase = "Winters coming!"
    @beast = nil
    super(house, home, sigil, phrase, members)
  end

  def rank
    return @rank
  end

  def sword_skills
    return @sword_skills
  end

  def add_beast(beast_name)
    @beast = beast_name
  end

  def spar(opponent)
    opponent.take_damage(1)
  end
end
