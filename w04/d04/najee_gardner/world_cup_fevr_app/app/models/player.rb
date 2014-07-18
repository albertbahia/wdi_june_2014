class Player <ActiveRecord::Base
  belongs_to :team

  validates :name, :photo_url, :position, :skill_level, presence: true
  validates :position, inclusion: {in: %w(Forward Defender Midfielder Goalkeeper)}
  validates :skill_level, numericality: {greater_than: 0}
  validates :skill_level, numericality: {less_than: 101}
end
