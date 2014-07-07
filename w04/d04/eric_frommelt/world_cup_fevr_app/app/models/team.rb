class Team < ActiveRecord::Base
  belongs_to :group
  has_many :players
  validates_presence_of :country
  validates_presence_of :photo_url
  validates_presence_of :manager_name
end
