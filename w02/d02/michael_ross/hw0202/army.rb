class Army
  attr_reader(:name, :members)

  def initialize(name, members)
    @name = name
    @members = members
  end

  def add_member(member)
    members.push(member)
  end

  def size()
    members.length
  end

  def living_members()
    members.select { |member| member.hp > 0 }
  end

  def clear_bodies()
    members.reject! { |member| member.hp <= 0 }
  end

  def defeated?()
    living_members.length == 0
  end

  def attack(other_army)
    living_members.sample.attack(other_army.living_members.sample)
  end
end
