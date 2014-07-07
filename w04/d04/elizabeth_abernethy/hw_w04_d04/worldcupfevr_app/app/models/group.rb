class Group < ActiveRecord::Base
  has_many :teams

  # Groups must have a name
  validates_presence_of :name

end
