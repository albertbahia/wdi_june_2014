class Team < ActiveRecord::Base
  belongs_to :groups
<<<<<<< HEAD

  # Team must have a country
  validates_presence_of :country
  
=======
  has_many :players

  # Team must have a country
  validates_presence_of :country

>>>>>>> e19f55e4a7ca67689d418fc425b1bb4930419cfa
end
