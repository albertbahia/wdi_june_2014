require_relative('./writer.rb')

class Drsuess < Writer

  attr_reader(:languages)
  def initialize(name, genre, book)
    super(name, genre, book)
    @languages = 15
  end

  def update_languages
    @languages = 16
  end


end
