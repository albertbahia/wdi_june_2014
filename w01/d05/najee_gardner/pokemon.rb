require 'pry'

class Pokemon
  attr_reader :name, :id, :problem_var_hp, :poketype
  attr_reader :attack, :defense, :speed

  def initialize(name, id, poketype, attack, defense, speed)
    @problem_var_hp = 100
    @name = name
    @id = id
    @poketype = poketype
    @attack = attack
    @defense = defense
    @speed = speed
  end

  def test_stuff

    puts "name: #{name}"
    puts "id: #{id}"
    puts "problem_var_hp: #{problem_var_hp}"
    puts "poketype: #{poketype}"
    puts "attack: #{attack}"
    puts "defense: #{defense}"
    puts "speed: #{speed}"

    binding.pry
  end


  def list_stats
    stat_list = "=" * 15 + "\n"
    if id < 10
      stat_list << "00#{id}: "
    elsif id < 100
      stat_list << "0#{id}: "
    else
      stat_list << "#{id}: "
    end


    stat_list << "#{name.capitalize}\n"
    stat_list << "=" * 15

    stat_list << "\nType: "

    if poketype.length == 2
      stat_list << poketype.join("/")
    else
      stat_list << poketype.first
    end

    stat_list << "\nHP: #{problem_var_hp}\n"
    stat_list << "Attack: #{attack}\n"
    stat_list << "Defense: #{defense}\n"
    stat_list << "Speed: #{speed}\n"
    stat_list << "-" * 15

    binding.pry
  end

  def restore_hp
    problem_var_hp = 100

    binding.pry
  end

  def take_damage2(value)
    binding.pry

  end

  def take_damage(damage)
    binding.pry

    if problem_var_hp > 0

      if problem_var_hp > damage

        problem_var_hp -= damage
      else

        problem_var_hp = 0
      end
    end
  end



end

pikachu = Pokemon.new("pikachu", 25, ["Electric"], 220, 340, 500)
# pikachu.take_damage(90)

binding.pry
