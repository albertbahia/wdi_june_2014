class Writer

  attr_reader(:name, :genre, :book)
  def initialize(name, genre, book)
    @name = name
    @genre = genre
    @book = book
  end

  def introduce
    "I am #{name} writer of #{genre}.  My first book was #{book}"
  end

end
