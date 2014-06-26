class Author < ActiveRecord::Base

  has_many:books  #same as writing the method ' has_many(:books) '
  # or can write: has_many(:books)

end
