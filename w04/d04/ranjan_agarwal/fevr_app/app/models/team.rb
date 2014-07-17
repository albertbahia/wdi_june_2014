class Team < ActiveRecord::Base
  belongs_to :groups
  has_many :players
  validates :country, :flag_url, :manager_name, presence: true
end
