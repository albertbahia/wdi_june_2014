class Team < ActiveRecord::Base
  belongs_to :groups
  has_many :players

  # Team must have a country
  validates_presence_of :country

end
