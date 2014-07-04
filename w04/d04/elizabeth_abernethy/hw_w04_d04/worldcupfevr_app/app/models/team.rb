class Team < ActiveRecord::Base
  belongs_to :groups

  # Team must have a country
  validates_presence_of :country
  
end
