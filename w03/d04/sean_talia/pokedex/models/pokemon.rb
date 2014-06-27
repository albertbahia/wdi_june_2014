class Pokemon < ActiveRecord::Base

  has_and_belongs_to_many(:trainers)

  def self.get_pokemon()
    array = [0, 1, 2, 3, 4, 5].map do
      random_id = Random.new.rand(1..151)
      random_pokemon = Pokemon.find_by(id: random_id)
    end
  end

  def info()
    {id: id, name: name, hp: hp, attack: attack, defense: defense, speed: speed}
  end

  def total_attack()
    x1 = attack * 0.5
    x2 = speed * 0.25
    x3 = defense * 0.2
    x1 + x2 - x3
  end

end
