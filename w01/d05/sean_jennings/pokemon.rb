require 'pry'

class Pokemon

  attr_reader( :name, :id, :poke_type, :hp, :attack, :defense, :speed)

  def initialize(name,id,poke_type,hp,attack,defense,speed)

  @name = name
  @id = id
  @poke_type = poke_type
  @hp = hp
  @max_hp = @hp
  @attack = attack
  @defense = defense
  @speed = speed
  end

  def list_stats
    list = {
      :name => @name,
      :id => @id,
      :poke_type => @poke_type,
      :hp => @hp,
      :attack => @attack,
      :defense => @defense,
      :speed => @speed
    }
  end

  def show_stats
    stats = list_stats
    stats.each do |key,value|
        puts "#{key}: #{value}"
    end
  end
  def restore_hp
    @hp = @max_hp
  end

  def take_damage
    if @hp > 0
    @hp = hp - 1
    elsif @hp == 0
    @hp
    end

  end

  def give_status
    if @hp > 0
      @hp
    elsif @hp == 0
      puts "fainted"
    end
  end




end

Joe = Pokemon.new("Joe",1,"idk",10,5,10,20)
binding.pry
