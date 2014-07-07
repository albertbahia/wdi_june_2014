class Group < ActiveRecord::Base
  has_many :teams
  has_many :players, :through => :teams
  validates_presence_of :name
end
