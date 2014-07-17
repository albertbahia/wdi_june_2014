class Team < ActiveRecord::Base
  has_many :players
  belongs_to :group

  validates :country, :flag_url, :manager_name, presence: true
end
