class Team < ActiveRecord::Base
  belongs_to :group
  has_many :players

  validates :country, presence: true
  validates :country, uniqueness: true
end
