class Pokemon

  def initialize(name, id, poketype, hp, attack, defense, speed)
    @name = name
    @id = id
    @poketype = poketype
    @attack = attack
    @defense = defense
    @speed = speed
    @hp = hp 
   
  end
  def list_stats
  	return "name: #{@name} id: #{@id} poketype: #{@poketype} hp: #{@hp} attack: #{@attack} defense: #{@defense} speed: #{@speed}"
  end 
  def hp 
  	return 0 if @hp < 0
  	return 100 if @hp >100
  	return @hp 
  end 

end
