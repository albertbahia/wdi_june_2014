require_relative('./writer.rb')

class Aynrand < Writer

  attr_reader(:death)
  def initialize(name, genre, book)
    super(name, genre, book)
    @death = 1982
  end

  def favorite_book
    @best_book = 'Atlas Shrugged'
  end




end
