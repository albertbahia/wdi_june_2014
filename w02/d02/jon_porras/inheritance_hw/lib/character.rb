class Character

  attr_reader(:name, :nick_name, :occupation)

  def initialize(name, nick_name, occupation)
    @name = name
    @nick_name = nick_name
    @occupation = occupation
  end

  def introduce
    return "I'm #{name} but you can call me #{nick_name}. I'm a #{occupation}."
  end

end
