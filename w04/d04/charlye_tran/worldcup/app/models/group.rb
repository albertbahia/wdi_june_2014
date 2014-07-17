class Group < ActiveRecord::Base
  has_many :teams
  has_many :players, :through => :teams

  validates :name, presence: true
  validates :name, uniqueness: true
end
