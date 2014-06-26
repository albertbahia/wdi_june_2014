class Army

  attr_reader :name, :members

  def initialize(name, members)
    @name = name
    @members = members
  end

  def add_member(being)
    members.push(being)
  end

  def size()
    members.length
  end

  def living_members()
    members.select { |member| member.hp != 0 }
  end

  def clear_bodies()
    members.delete_if { |member| member.hp == 0 }
  end

  def defeated?()
    army_hp = 0
    members.each {|member| army_hp += member.hp}
    army_hp == 0 ? true : false
  end

  def attack(enemy_army)
    living_enemies = enemy_army.living_members
    living_members.each_with_index do |living_member,index|
      living_member.attack(living_enemies[index])
    end
  end
end
