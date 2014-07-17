class Group < ActiveRecord::Base
  has_many :teams

  validates_presence_of :name
  validates_uniqueness_of :name
end
