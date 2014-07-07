class Artist < ActiveRecord::Base
  has_many :songs

  #Artist should have a name
  validates(:name, {presence: true}) 

  #Artist should have a nationality
  validates(:nationality, {presence: true})

  #Does both at once and w/o curly braces
  #validates :name, :nationality, presence: true

  #No two artist should have the same name
  validates(:name, {uniqueness: true})

  #Artist should not exceed 50 char
  validates(:name, { length: { maximum: 50 } })


end
