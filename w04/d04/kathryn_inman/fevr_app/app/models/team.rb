class Team < ActiveRecord::Base
  has_many :players
  belongs_to :group

  validates :country, :photo_url, :manager_name, :group_id, presence: true
  validates :country, :photo_url, :manager_name, uniqueness: true
end
