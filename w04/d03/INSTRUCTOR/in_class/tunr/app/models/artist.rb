class Artist < ActiveRecord::Base
  has_many :songs

  # Artists should have a name and nationality
  validates :name, :nationality, presence: true

  # Two artists should not have the same name
  validates :name, uniqueness: true

  # Artist name should not exceed 50 characters
  validates :name, length: { maximum: 50 }

end
