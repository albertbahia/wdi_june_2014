class Player < ActiveRecord::Base
  belongs_to :team

  validates :name, :photo_url, :position, :skill, :team_id, presence: true
  validates :name, uniqueness: true
end
