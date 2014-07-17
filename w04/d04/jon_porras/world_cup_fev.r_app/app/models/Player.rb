class Player < ActiveRecord::Base
  belongs_to :team

  validates :name, :photo_url, :position, :skill_level, presence: true
  validates :skill_level, numericality: {less_than: 101}
  validates :position, inclusion: { in: %w(Forward Midfielder Defender Goalkeeper)}
end
