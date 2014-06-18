require_relative("character.rb")

class Hart < Character

  attr_reader(:married)

  def initialize(name, nick_name, occupation)
    super(name, nick_name, occupation)
    @married = true
  end

  def promoted
    @occupation = "Sergeant"
  end

  def justify
    return "A man’s game charges a man’s price"
  end

end
