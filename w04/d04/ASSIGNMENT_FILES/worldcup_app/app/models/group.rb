class Group < ActiveRecord::Base
  has_many :teams

  validates_presence_of :name
end