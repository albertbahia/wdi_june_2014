class Team < ActiveRecord::Base
  has_many :players
  belongs_to :group
  validates :country, :manager, presence: true

end
